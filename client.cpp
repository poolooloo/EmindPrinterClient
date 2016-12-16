#include "client.h"
#include <QTcpSocket>
#include <QFile>

namespace EPT {

const QString AUTH_CODE = "emind";
const quint16 SERVER_PORT = 6666;

Client::Client(QObject *parent) : QObject(parent)
{
    psocket = new QTcpSocket(this);
    //    connect(psocket,SIGNAL(readyRead()),this,SLOT(checkConnectivity()));
    connect(psocket,SIGNAL(error(QAbstractSocket::SocketError)),this,SLOT(displayError(QAbstractSocket::SocketError)));
//    connect(psocket,SIGNAL(bytesWritten(qint64)),this,SLOT(updateClientProgress(qint64)));
    loadSize = 4*1024;
    totalBytes = 0;
    bytesWritten = 0;
    bytesToWrite = 0;
}

Client::~Client()
{

}

bool Client::checkConnectivity(QString ip,QString license)
{
    qDebug()<<"ip="<<ip<<endl;
    qDebug()<<__FUNCTION__<<endl;
    psocket->abort();

    psocket->connectToHost(ip,SERVER_PORT);
    if(psocket->waitForConnected(3000))
        emit errConnected();
    if(checkLicense(license))
        return true;
    else
        return false;

}

bool Client::checkLicense(QString license)
{
    qDebug()<<__FUNCTION__<<endl;
    sndMsg(license);
    while(psocket->waitForReadyRead()){
        QString rmsg = rcvMsg();
        if(rmsg != "OK"){
            setErr(rmsg);
            return false;
        }
        sndMsg("Request printer list!");
        while(psocket->waitForReadyRead()){
            QString printers = rcvMsg();
            m_plist = printers.split(",");
            foreach (auto str, m_plist) {
                qDebug()<<str<<endl;
            }
//            sendFiles(printerList);
        }
    }
    return true;
//    return true;
//    QDataStream inData(psocket);
//    //    while(psocket->waitForReadyRead())
//    if(inDataSize == 0){
//        if(psocket->bytesAvailable()<(int)sizeof(quint16))
//            return true;

//        inData >> inDataSize;
//    }

//    if(psocket->bytesAvailable()<inDataSize)
//        return true;


//    QString sockData;
//    inData >> sockData;
//    //send license
//    psocket->write(license.toLatin1());
//    //recv reply
//    char buf[16];
//    psocket->readLine(buf,sizeof(buf));
//    if(buf == "ok"){
//        return true;
//    }else{
//        //license error-->reply false
//        qDebug()<<buf<<endl;
//        return false;
//    }
//    //send request of printer list
//    QByteArray request("request printer list");
//    psocket->write(request);
//    //recv reply of printer list
//    QDataStream printerLists(psocket);
//    printerLists << psocket->readAll();

//    //
//    //    QFile fileToPrint("test.pdf");

}

void Client::checkConnect()
{
    sndMsg(AUTH_CODE);
    while(psocket->waitForReadyRead()){
        QString rmsg = rcvMsg();
        if(rmsg != "OK"){
            return ;
        }
        sndMsg("Request printer list!");
        while(psocket->waitForReadyRead()){
            QString printers = rcvMsg();
            QStringList printerList;
            printerList = printers.split(",");
            setPrinterNameList(printerList);
//            sendFiles(printerList);
        }
    }
}

void Client::setPrinterNameList(const QStringList& list)
{
    m_plist = list;
    emit printerNameListChanged();
}

QStringList Client::printerNameList()
{
    return m_plist;
}

void Client::sndMsg(QString msgStr)
{
    QByteArray authblock;
    QDataStream out(&authblock,QIODevice::WriteOnly);
    out << (quint16)0 << msgStr;
    out.device()->seek(0);
    out<<(quint16)(authblock.size() - sizeof(quint16));
    psocket->write(authblock);
    psocket->flush();
}

QString Client::rcvMsg()
{
    QDataStream in(psocket);
    if(blockSize == 0 ){
        if(psocket->bytesAvailable()<(int)sizeof(quint16)){
            return 0;
        }

        in >> blockSize;
    }

    in >> message;
    blockSize = 0;
    return message;
}


void Client::sendFiles(QStringList& Files)  //实现文件大小等信息的发送
{
    foreach(auto fileName,Files){

        localFile = new QFile(fileName);
        if(!localFile->open(QFile::ReadOnly))
        {
            qDebug() << "open file error!";
            return;
        }
        fileName = localFile->fileName();
        totalBytes = localFile->size();   //获取待发送文件的大小并存储
        //文件总大小
        QDataStream sendOut(&outBlock,QIODevice::WriteOnly);  //将发送缓冲区封闭在一个QDataStream类型的变量中
        //    sendOut.setVersion(QDataStream::Qt_4_6);
        qDebug()<<"fileName=="<<fileName;
        qDebug()<<"fileName.size()=="<<fileName.size();
        qDebug()<<"fileName.lastIndexOf('/')=="<<fileName.lastIndexOf('/');
        QString currentFileName = fileName.right(fileName.size() - fileName.lastIndexOf('/')-1);
        qDebug()<<"currentFileName=="<<currentFileName;
        sendOut << qint64(0) << qint64(0) << currentFileName;
        //依次写入总大小信息空间，文件名大小信息空间，文件名---仅是文件名不含路径，没必要含路径
        qDebug()<<"outBlock.size=="<<outBlock.size();//
        totalBytes += outBlock.size();
        //这里的总大小是文件名大小等信息和实际文件大小的总和
        sendOut.device()->seek(0);
        sendOut<<totalBytes<<qint64((outBlock.size() - sizeof(qint64)*2));
        //填补
        //totalBytes是文件总大小，即两个quint64的大小+文件名+文件实际内容的大小
        //qint64((outBlock.size() - sizeof(qint64)*2))得到的是文件名大小
        bytesToWrite = totalBytes - psocket->write(outBlock);
        //发送完头数据后剩余数据的大小，即文件实际内容的大小
        outBlock.resize(0);
        qDebug()<<"#####"<<totalBytes;

        ///////////////////////////////////////////////
        qDebug()<<"#######已发送："<<bytesWritten<<"剩余："<<bytesToWrite;
        bytesWritten += outBlock.size();
        //已经发送数据的大小
        if(bytesToWrite > 0) //如果已经发送了数据
        {
            qDebug()<<"bytesToWrite > 0"<<endl;
            //初始化时loadSize = 64*1024;qMin为返回参数中较小的值，每次最多发送64K的大小
            outBlock = localFile->read(qMin(bytesToWrite,loadSize));
            //每次发送loadSize大小的数据，这里设置为4KB，如果剩余的数据不足4KB，
            //就发送剩余数据的大小
            bytesToWrite -= (int)psocket->write(outBlock);
            //发送完一次数据后还剩余数据的大小
            outBlock.resize(0);
            //清空发送缓冲区
        }
        else
        {
            qDebug()<<"bytesToWrite <0"<<endl;

            localFile->close(); //如果没有发送任何数据，则关闭文件
        }

        if(bytesWritten == totalBytes) //发送完毕
        {
            qDebug()<<"bytesWritten == totalBytes"<<endl;
            localFile->close();
            psocket->close();
        }

    }
}

void Client::updateClientProgress(qint64 numBytes) //更新进度条，实现文件的传送
{

    qDebug()<<"#######已发送："<<bytesWritten<<"剩余："<<bytesToWrite;
    bytesWritten += (int)numBytes;
    //已经发送数据的大小
    if(bytesToWrite > 0) //如果已经发送了数据
    {
        qDebug()<<"bytesToWrite > 0"<<endl;
        //初始化时loadSize = 64*1024;qMin为返回参数中较小的值，每次最多发送64K的大小
        outBlock = localFile->read(qMin(bytesToWrite,loadSize));
        //每次发送loadSize大小的数据，这里设置为4KB，如果剩余的数据不足4KB，
        //就发送剩余数据的大小
        bytesToWrite -= (int)psocket->write(outBlock);
        //发送完一次数据后还剩余数据的大小
        outBlock.resize(0);
        //清空发送缓冲区
    }
    else
    {
        qDebug()<<"bytesToWrite <0"<<endl;

        localFile->close(); //如果没有发送任何数据，则关闭文件
    }

    if(bytesWritten == totalBytes) //发送完毕
    {
        qDebug()<<"bytesWritten == totalBytes"<<endl;
        localFile->close();
        psocket->close();
    }
}

QString Client::getErr()
{

}
void Client::setErr(const QString error)
{
    if(error != m_err){
        m_err = error;
        emit errChanged();
    }

}

void Client::update()
{

}

void Client::displayError(QAbstractSocket::SocketError psocketErr)
{
    switch(psocketErr){
    case QAbstractSocket::HostNotFoundError:
        qDebug()<<"HostNotFoundError"<<endl;
        //        QMessageBox::information(0, tr("Error"),
        //                                 tr("HostNotFoundError"));
        break;

    case QAbstractSocket::ConnectionRefusedError:
        qDebug()<<"ConnectionRefusedError"<<endl;
        //        QMessageBox::information(0, tr("Error"),
        //                                 tr("ConnectionRefusedError"));
        break;
    case QAbstractSocket::SocketTimeoutError:
        qDebug()<<"psocketTimeoutError"<<endl;
        //        QMessageBox::information(0, tr("Error"),
        //                                 tr("psocketTimeoutError"));
        break;
    case QAbstractSocket::DatagramTooLargeError:
        qDebug()<<"DatagramTooLargeError"<<endl;
        //        QMessageBox::information(0, tr("Error"),
        //                                 tr("DatagramTooLargeError"));
        break;
    default:
        break;
    }
}


void Client::printerName() const
{

}

void Client::loadCupsFiles(const QStringList& fileNames,const QStringList& titles,const QString& options)
{
    foreach(QString fileName,fileNames){
//        sendFiles(fileName);
    }
}


void Client::setDefaultPrinter(){

}



}

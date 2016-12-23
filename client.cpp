#include "client.h"
#include <QTcpSocket>
#include <QFile>
#include <QProcess>


namespace EPT {

const QString AUTH_CODE = "emind";
const quint16 SERVER_PORT = 6666;

Client::Client(QObject *parent) : QObject(parent)
{
    psocket = new QTcpSocket(this);
//    connect(psocket,SIGNAL(readyRead()),this,SLOT(checkConnectivity()));
//    connect(psocket,SIGNAL(readyRead()),this,SLOT(getPrinterNameList()));
    connect(psocket,SIGNAL(readyRead()),this,SLOT(checkLicense()));

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


Client* Client::instance()
{
    static Client *inst = 0;
    if(!inst)
        inst = new Client();
    return inst;
}

bool Client::checkConnectivity(QString ip)
{
    qDebug()<<"ip="<<ip<<endl;
    qDebug()<<__FUNCTION__<<endl;
//    psocket->abort();

    psocket->connectToHost(ip,SERVER_PORT);
    return psocket->waitForConnected();

}

void Client::reqLicense(QString license)
{
    sndMsg(license);
}

bool Client::checkLicense()
{
    qDebug()<<__FUNCTION__<<endl;

//    while(psocket->waitForReadyRead())
    {
        QString rmsg = rcvMsg();
        qDebug()<<rmsg<<endl;

        if((rmsg.length()<5)&& (rmsg == "OK")){
            qDebug()<<"test:"<<rmsg<<endl;
            return true;
        }
        else if(rmsg == "AUTH WRONG"){
            qDebug()<<rmsg<<endl;
            setErr(rmsg);
            return false;
        }else{
            getPrinterNameList(rmsg);
        }

    }

}

void Client::reqPrinterList()
{
    sndMsg("Request printer list!");
}


void Client::setPrinterNameList(const QStringList list)
{
    m_plist = list;
    emit printerNameListChanged();
}

QStringList Client::printerNameList()
{
    return m_plist;
}

QStringList Client::getPrinterNameList(QString& rmsg)
{
    QString printers = rmsg;
    qDebug()<<"printers="<<printers<<endl;
    QStringList tmpList;
    tmpList = printers.split(",");
    foreach (auto str, tmpList) {
        qDebug()<<str<<endl;
    }
    qDebug()<<tmpList.at(0)<<endl;
    if(tmpList.at(0) == "PList"){
        for(int i=1;i<tmpList.count()-1;i++) {
            m_plist << tmpList[i];
            qDebug()<<m_plist[i]<<endl;
        }
    }else{
        qDebug()<<"no list"<<endl;
//        reqPrinterList();
    }

    return m_plist;
}

//void Client::setPNameListModel(QStringList modellist)
//{
//    m_pnamelistModel.setStringList(modellist);
//    emit pNameListModelChanged(modellist);
//}

//QStringListModel Client::getPNameListModel()
//{
//    QStringListModel tmodel;
//    tmodel.setStringList(m_plist);
//    return m_pnamelistModel;
//}

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
    qDebug()<<"message"<<message<<endl;
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
    return m_err;
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

void Client::load(const QString &fileName,const QString &title,const QString &options,bool autoRemove)
{
    loadCupsFiles(QStringList()<<fileName,QStringList()<<title,options,autoRemove);
}

void Client::loadCupsFiles(const QStringList& fileNames,const QStringList& titles,const QString& options,bool autoRemove)
{
    foreach(QString fileName,fileNames){
//        sendFiles(fileName);
        qDebug()<<"fileName="<<endl;
    }
}


void Client::setDefaultPrinter(QString prName){
    qDebug()<<prName<<endl;
    qDebug()<<__FUNCTION__<<endl;
    QProcess proc;
    QString printerIp("192.168.25.198");
    QString ppdName("qrc:/test.ppd");
    proc.start(QString("gksu -D AddPrinter lpadmin -p %1@%2 -P %3 ").arg(prName).arg(printerIp).arg(ppdName));
    proc.waitForFinished();

}



}

#include "client.h"
#include <QTcpSocket>

namespace EPT {

const quint16 SERVER_PORT = 8888;

Client::Client(QObject *parent) : QObject(parent)
{
    socket = new QTcpSocket(this);
//    connect(socket,SIGNAL(readyRead()),this,SLOT(checkConnectivity()));
    connect(socket,SIGNAL(error(QAbstractSocket::SocketError)),this,SLOT(displayError(QAbstractSocket::SocketError)));
}

Client::~Client()
{

}

bool Client::checkConnectivity(QString ip,QString license)
{
    qDebug()<<"ip="<<ip<<endl;
    qDebug()<<__FUNCTION__<<endl;
    socket->abort();

    socket->connectToHost(ip,SERVER_PORT);
    if(checkLicense(license))
        return true;
    else
        return false;

}

bool Client::checkLicense(QString license)
{
    QDataStream inData(socket);
    if(inDataSize == 0){
        if(socket->bytesAvailable()<(int)sizeof(quint16))
            return true;

        inData >> inDataSize;
    }

    if(socket->bytesAvailable()<inDataSize)
        return true;


    QString sockData;
    inData >> sockData;





    return true;
}

QString Client::getErr()
{

}

void Client::update()
{

}

void Client::displayError(QAbstractSocket::SocketError socketErr)
{
    switch(socketErr){
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
        qDebug()<<"SocketTimeoutError"<<endl;
//        QMessageBox::information(0, tr("Error"),
//                                 tr("SocketTimeoutError"));
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







}

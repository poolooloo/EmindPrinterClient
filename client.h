#ifndef CLIENT_H
#define CLIENT_H

#include <QMessageBox>
#include <QObject>
#include <QLocalSocket>
class QFile;
class QTcpSocket;
namespace EPT {



class Client : public QObject
{
    Q_OBJECT
public:
    explicit Client(QObject *parent = 0);
    ~Client();

    enum ServerError{ IpError,LicenseError};
    Q_ENUMS(ServerError)

    Q_INVOKABLE void update();
    Q_PROPERTY(QString err READ getErr  NOTIFY errChanged)

    QString getErr();
    void printerName() const;
    void getPrinterList();
    Q_INVOKABLE void sendFiles();


signals:
    void error();
    void errChanged();
    void errConnected();

public slots:
    bool checkConnectivity(QString ip,QString license);
    bool checkLicense(QString license);
    void displayError(QAbstractSocket::SocketError);
    void updateClientProgress(qint64 numBytes);


private:
    QTcpSocket *socket;
    quint16 inDataSize;

    QFile *localFile;  //要发送的文件
    qint64 totalBytes;  //数据总大小
    qint64 bytesWritten;  //已经发送数据大小
    qint64 bytesToWrite;   //剩余数据大小,即文件实际内容的大小
    qint64 loadSize;   //每次发送数据的大小
    QString fileName;  //保存文件路径
    QByteArray outBlock;  //数据缓冲区，即存放每次要发送的数据

};

}
#endif // CLIENT_H

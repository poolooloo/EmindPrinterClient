#ifndef CLIENT_H
#define CLIENT_H

#include <QMessageBox>
#include <QObject>
#include <QAbstractSocket>
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
    Q_PROPERTY(QString err READ getErr WRITE setErr NOTIFY errChanged)
    QString getErr();
    void setErr(const QString error);

    Q_PROPERTY(QStringList printerNameList READ printerNameList WRITE setPrinterNameList NOTIFY printerNameListChanged)
    QStringList printerNameList();
    void setPrinterNameList(const QStringList&);

    void printerName() const;
    Q_INVOKABLE void sendFiles(QStringList& Files);
    void loadCupsFiles(const QStringList& fileNames,const QStringList& titles,const QString& options);
    Q_INVOKABLE void setDefaultPrinter();
    void sndMsg(QString msgStr);
    QString rcvMsg();
    void checkConnect();

signals:
    void error();
    void errChanged();
    void errConnected();
    void printerNameListChanged();

public slots:
    bool checkConnectivity(QString ip,QString license);
    bool checkLicense(QString license);
    void displayError(QAbstractSocket::SocketError);
    void updateClientProgress(qint64 numBytes);


private:
    QTcpSocket *psocket;

    quint16 inDataSize;

    QFile *localFile;  //要发送的文件
    qint64 totalBytes;  //数据总大小
    qint64 bytesWritten;  //已经发送数据大小
    qint64 bytesToWrite;   //剩余数据大小,即文件实际内容的大小
    qint64 loadSize;   //每次发送数据的大小
    QString fileName;  //保存文件路径

    QByteArray outBlock;  //数据缓冲区，即存放每次要发送的数据
    quint16 blockSize;

    QString message;

    QString m_err;
    QStringList m_plist;


};

}
#endif // CLIENT_H

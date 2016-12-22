#ifndef CLIENT_H
#define CLIENT_H

#include <QMessageBox>
#include <QObject>
#include <QAbstractSocket>
#include <QStringListModel>

class QFile;
class QTcpSocket;
namespace EPT {



class Client : public QObject
{
    Q_OBJECT
//    Q_PROPERTY(QStringListModel pNameListModel READ getPNameListModel NOTIFY pNameListModelChanged)
    Q_PROPERTY(QString err READ getErr WRITE setErr NOTIFY errChanged)
    Q_PROPERTY(QStringList printerNameList READ printerNameList WRITE setPrinterNameList NOTIFY printerNameListChanged)
    Q_ENUMS(ServerError)


public:
    explicit Client(QObject *parent = 0);
    ~Client();

    enum ServerError{ IpError,LicenseError};

    Q_INVOKABLE void update();
    Q_INVOKABLE void reqPrinterList();
    Q_INVOKABLE void reqLicense(QString license);
    Q_INVOKABLE void sendFiles(QStringList& Files);


    QString getErr();
    void setErr(const QString error);
    QStringList printerNameList();
    void setPrinterNameList(const QStringList);
    void printerName() const;
    void loadCupsFiles(const QStringList& fileNames,const QStringList& titles,const QString& options);
    void sndMsg(QString msgStr);
    QString rcvMsg();
    void checkConnect();
//    void setPNameListModel(QStringList modellist);
//    QStringListModel getPNameListModel();

signals:
    void error();
    void errChanged();
    void errConnected();
    void printerNameListChanged();
    void pNameListModelChanged(QStringList);

public slots:
    void setDefaultPrinter(QString prName);
    QStringList getPrinterNameList(QString& msg);
    Q_INVOKABLE bool checkConnectivity(QString ip);
    Q_INVOKABLE bool checkLicense();
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
    QStringListModel m_pnamelistModel;



};

}
#endif // CLIENT_H

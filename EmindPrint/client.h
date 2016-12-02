#ifndef CLIENT_H
#define CLIENT_H

#include <QMessageBox>
#include <QObject>
#include <QLocalSocket>

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

signals:
    void error();
    void errChanged();

public slots:
    bool checkConnectivity(QString ip,QString license);
    bool checkLicense(QString license);
    void displayError(QAbstractSocket::SocketError);

private:
    QTcpSocket *socket;
    quint16 inDataSize;

};

}
#endif // CLIENT_H

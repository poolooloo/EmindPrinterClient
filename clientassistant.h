#ifndef CLIENTASSISTANT_H
#define CLIENTASSISTANT_H

#include "client.h"
#include <QObject>



class ClientAssistant : public QObject
{
    Q_OBJECT

public:
    explicit ClientAssistant(QObject* parent=0);
    ~ClientAssistant();

    Q_INVOKABLE void checkConnectivity(QString ip,QString license);

signals:
    void msgClient(QString ,QString );
    void sigConnected();

private:

};

#endif // CLIENTASSISTANT_H

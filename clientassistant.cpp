#include "clientassistant.h"

ClientAssistant::ClientAssistant(QObject* parent) : QObject(parent)
{
    connect(this,SIGNAL(msgClient(QString,QString)),client,SLOT(checkConnectivity(QString,QString)));
    connect(client,SIGNAL(sigConnected()),this,SIGNAL(sigConnected()));
}

void ClientAssistant::checkConnectivity(QString ip,QString license)
{
     emit msgClient(ip,license);
}

ClientAssistant::~ClientAssistant()
{

}




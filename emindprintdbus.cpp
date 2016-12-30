#include "emindprintdbus.h"
#include <QtDBus/QDBusConnection>
#include <QDebug>
#include "client.h"
namespace EPT {


EmindPrintDbus::EmindPrintDbus(const QString &serviceName,const QString &dbusPath) : QObject()
{
    QDBusConnection::sessionBus().registerService(serviceName);
    QDBusConnection::sessionBus().registerObject(dbusPath,this,QDBusConnection::ExportAllSlots);
}

EmindPrintDbus::~EmindPrintDbus()
{

}

void EmindPrintDbus::add(const QString &file, const QString &title, bool autoRemove ,const QString &options)
{
    qDebug()<<__FUNCTION__<<endl;
    client->load(file,title,options,autoRemove);
}




}

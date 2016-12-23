#ifndef EMINDPRINTDBUS_H
#define EMINDPRINTDBUS_H

#include <QObject>
#include <QString>
namespace EPT {


class EmindPrintDbus : public QObject
{
    Q_OBJECT
    Q_CLASSINFO("D-Bus Interface","org.emindprinter")
public:
    explicit EmindPrintDbus(const QString &serviceName, const QString &dbusPath);
    ~EmindPrintDbus();
signals:

public slots:
    void add(const QString& file,const QString& title,bool autoRemove=false,const QString& options="");
};





}
#endif // EMINDPRINTDBUS_H

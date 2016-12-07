#include "cupsbackend.h"
#include <QApplication>
#include <QProcess>

CupsBackend::CupsBackend()
{
    QStringList args;
    args << "-P" << printerName();
    args << "-#" << QString("%1").arg(numCopies);
    args << "-T" << jobName;
    args << "-r";
//    if(mDuplexType == DuplexAuto && !duplex){
//        args << "-o sides=one-sided";
//    }

    args << file.toLocal8Bit();
    QProcess proc;
    proc.startDetached("lpr",args);
    return true;
}

bool CupsBackend::print(const QList<Sheet *> &sheets, const QString &jobName, bool duplex, int numCopies) const
{
    QStringList args;
    args << "-P" << printerName();
    args << "-#" << QString("%1").arg(numCopies);
    args << "-T" << jobName;
    args << "-r";
//    if(mDuplexType == DuplexAuto && !duplex){
//        args << "-o sides=one-sided";
//    }

    args << file.toLocal8Bit();
    QProcess proc;
    proc.startDetached("lpr",args);
    return true;
}

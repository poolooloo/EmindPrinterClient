#include "cupsbackend.h"
#include <QApplication>
#include <QProcess>

CupsBackend::CupsBackend()
{
    QStringList arglist = qApp->arguments();

    args<<"-P"<<printerName();
    args<<"-#"<<QString("%1".arg(numCopies));

}

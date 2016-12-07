#ifndef CUPSBACKEND_H
#define CUPSBACKEND_H

#include <QObject>

class CupsBackend
{
public:
    CupsBackend();
    virtual bool print(const QList<Sheet*> &sheets, const QString &jobName, bool duplex, int numCopies = 1) const;

};

#endif // CUPSBACKEND_H

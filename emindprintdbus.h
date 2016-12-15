#ifndef EMINDPRINTDBUS_H
#define EMINDPRINTDBUS_H

#include <QObject>

class EmindPrintDbus : public QObject
{
    Q_OBJECT
public:
    explicit EmindPrintDbus(QObject *parent = 0);

signals:

public slots:
};

#endif // EMINDPRINTDBUS_H
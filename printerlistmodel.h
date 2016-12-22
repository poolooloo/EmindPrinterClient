#ifndef PRINTERLISTMODEL_H
#define PRINTERLISTMODEL_H

#include <QObject>
#include <QAbstractListModel>

class PrinterListModelPrivate;
class PrinterListModel : public QAbstractListModel
{
public:
    PrinterListModel();







private:
    PrinterListModelPrivate *m_dptr;
};

#endif // PRINTERLISTMODEL_H

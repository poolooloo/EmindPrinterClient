#ifndef PRINTERLISTMODEL_H
#define PRINTERLISTMODEL_H

#include <QObject>
#include <QAbstractListModel>
#include <QtCore>
#include <QHash>
#include <QByteArray>

class PrinterListModelPrivate;
class PrinterListModel : public QAbstractListModel
{
public:
    PrinterListModel(QObject* parent=0);
    ~PrinterListModel();

    int rowCount(const QModelIndex &parent = QModelIndex()) const Q_DECL_OVERRIDE;

    QVariant data(const QModelIndex &index, int role) const Q_DECL_OVERRIDE;

    void addPrinterName(const QString& pname);

    Q_INVOKABLE void reload();
    Q_INVOKABLE void remove(int index);

protected:

    QHash<int,QByteArray> roleNames() const Q_DECL_OVERRIDE;



private:
    PrinterListModelPrivate *m_dptr;
};

#endif // PRINTERLISTMODEL_H

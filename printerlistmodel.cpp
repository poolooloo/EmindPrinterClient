#include "printerlistmodel.h"

class PrinterListModelPrivate
{
public:
    PrinterListModelPrivate()
    {
        int role = Qt::UserRole;
        m_roleNames.insert(role++,"prname");
    }

    QStringList m_list;
    QHash<int ,QByteArray> m_roleNames;

    ~PrinterListModelPrivate()
    {
        m_list.clear();
    }

};



PrinterListModel::PrinterListModel(QObject* parent)
    :QAbstractListModel(parent),
      m_dptr(new PrinterListModelPrivate)
{

}

PrinterListModel::~PrinterListModel()
{
    delete m_dptr;
}


int PrinterListModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent)
    return m_dptr->m_list.size();
}

QVariant PrinterListModel::data(const QModelIndex &index, int role) const
{
    if(index.row()<0 || index.row() >= m_dptr->m_list.count()){
        return QVariant();
    }


}

QHash<int,QByteArray> PrinterListModel::roleNames() const
{
    return m_dptr->m_roleNames;
}

void PrinterListModel::addPrinterName(const QString &pname)
{
    beginInsertRows(QModelIndex(),rowCount(),rowCount());
    m_dptr->m_list<<pname;
    endInsertRows();
}

void PrinterListModel::reload()
{
    beginResetModel();
    m_dptr->m_list.clear();
    endResetModel();
}

void PrinterListModel::remove(int index)
{
    beginRemoveRows(QModelIndex(),index,index);
    m_dptr->m_list.removeAt(index);
    endRemoveRows();
}

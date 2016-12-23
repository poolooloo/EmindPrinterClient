/****************************************************************************
** Meta object code from reading C++ file 'client.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.7.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "client.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'client.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.7.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_EPT__Client_t {
    QByteArrayData data[31];
    char stringdata0[374];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_EPT__Client_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_EPT__Client_t qt_meta_stringdata_EPT__Client = {
    {
QT_MOC_LITERAL(0, 0, 11), // "EPT::Client"
QT_MOC_LITERAL(1, 12, 5), // "error"
QT_MOC_LITERAL(2, 18, 0), // ""
QT_MOC_LITERAL(3, 19, 10), // "errChanged"
QT_MOC_LITERAL(4, 30, 12), // "errConnected"
QT_MOC_LITERAL(5, 43, 22), // "printerNameListChanged"
QT_MOC_LITERAL(6, 66, 21), // "pNameListModelChanged"
QT_MOC_LITERAL(7, 88, 17), // "setDefaultPrinter"
QT_MOC_LITERAL(8, 106, 6), // "prName"
QT_MOC_LITERAL(9, 113, 18), // "getPrinterNameList"
QT_MOC_LITERAL(10, 132, 8), // "QString&"
QT_MOC_LITERAL(11, 141, 3), // "msg"
QT_MOC_LITERAL(12, 145, 17), // "checkConnectivity"
QT_MOC_LITERAL(13, 163, 2), // "ip"
QT_MOC_LITERAL(14, 166, 12), // "checkLicense"
QT_MOC_LITERAL(15, 179, 12), // "displayError"
QT_MOC_LITERAL(16, 192, 28), // "QAbstractSocket::SocketError"
QT_MOC_LITERAL(17, 221, 20), // "updateClientProgress"
QT_MOC_LITERAL(18, 242, 8), // "numBytes"
QT_MOC_LITERAL(19, 251, 6), // "update"
QT_MOC_LITERAL(20, 258, 14), // "reqPrinterList"
QT_MOC_LITERAL(21, 273, 10), // "reqLicense"
QT_MOC_LITERAL(22, 284, 7), // "license"
QT_MOC_LITERAL(23, 292, 9), // "sendFiles"
QT_MOC_LITERAL(24, 302, 12), // "QStringList&"
QT_MOC_LITERAL(25, 315, 5), // "Files"
QT_MOC_LITERAL(26, 321, 3), // "err"
QT_MOC_LITERAL(27, 325, 15), // "printerNameList"
QT_MOC_LITERAL(28, 341, 11), // "ServerError"
QT_MOC_LITERAL(29, 353, 7), // "IpError"
QT_MOC_LITERAL(30, 361, 12) // "LicenseError"

    },
    "EPT::Client\0error\0\0errChanged\0"
    "errConnected\0printerNameListChanged\0"
    "pNameListModelChanged\0setDefaultPrinter\0"
    "prName\0getPrinterNameList\0QString&\0"
    "msg\0checkConnectivity\0ip\0checkLicense\0"
    "displayError\0QAbstractSocket::SocketError\0"
    "updateClientProgress\0numBytes\0update\0"
    "reqPrinterList\0reqLicense\0license\0"
    "sendFiles\0QStringList&\0Files\0err\0"
    "printerNameList\0ServerError\0IpError\0"
    "LicenseError"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_EPT__Client[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      15,   14, // methods
       2,  120, // properties
       1,  128, // enums/sets
       0,    0, // constructors
       0,       // flags
       5,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   89,    2, 0x06 /* Public */,
       3,    0,   90,    2, 0x06 /* Public */,
       4,    0,   91,    2, 0x06 /* Public */,
       5,    0,   92,    2, 0x06 /* Public */,
       6,    1,   93,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       7,    1,   96,    2, 0x0a /* Public */,
       9,    1,   99,    2, 0x0a /* Public */,
      12,    1,  102,    2, 0x0a /* Public */,
      14,    0,  105,    2, 0x0a /* Public */,
      15,    1,  106,    2, 0x0a /* Public */,
      17,    1,  109,    2, 0x0a /* Public */,

 // methods: name, argc, parameters, tag, flags
      19,    0,  112,    2, 0x02 /* Public */,
      20,    0,  113,    2, 0x02 /* Public */,
      21,    1,  114,    2, 0x02 /* Public */,
      23,    1,  117,    2, 0x02 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QStringList,    2,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    8,
    QMetaType::QStringList, 0x80000000 | 10,   11,
    QMetaType::Bool, QMetaType::QString,   13,
    QMetaType::Bool,
    QMetaType::Void, 0x80000000 | 16,    2,
    QMetaType::Void, QMetaType::LongLong,   18,

 // methods: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,   22,
    QMetaType::Void, 0x80000000 | 24,   25,

 // properties: name, type, flags
      26, QMetaType::QString, 0x00495103,
      27, QMetaType::QStringList, 0x00495103,

 // properties: notify_signal_id
       1,
       3,

 // enums: name, flags, count, data
      28, 0x0,    2,  132,

 // enum data: key, value
      29, uint(EPT::Client::IpError),
      30, uint(EPT::Client::LicenseError),

       0        // eod
};

void EPT::Client::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Client *_t = static_cast<Client *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->error(); break;
        case 1: _t->errChanged(); break;
        case 2: _t->errConnected(); break;
        case 3: _t->printerNameListChanged(); break;
        case 4: _t->pNameListModelChanged((*reinterpret_cast< QStringList(*)>(_a[1]))); break;
        case 5: _t->setDefaultPrinter((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 6: { QStringList _r = _t->getPrinterNameList((*reinterpret_cast< QString(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< QStringList*>(_a[0]) = _r; }  break;
        case 7: { bool _r = _t->checkConnectivity((*reinterpret_cast< QString(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 8: { bool _r = _t->checkLicense();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 9: _t->displayError((*reinterpret_cast< QAbstractSocket::SocketError(*)>(_a[1]))); break;
        case 10: _t->updateClientProgress((*reinterpret_cast< qint64(*)>(_a[1]))); break;
        case 11: _t->update(); break;
        case 12: _t->reqPrinterList(); break;
        case 13: _t->reqLicense((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 14: _t->sendFiles((*reinterpret_cast< QStringList(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 9:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QAbstractSocket::SocketError >(); break;
            }
            break;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (Client::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Client::error)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (Client::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Client::errChanged)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (Client::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Client::errConnected)) {
                *result = 2;
                return;
            }
        }
        {
            typedef void (Client::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Client::printerNameListChanged)) {
                *result = 3;
                return;
            }
        }
        {
            typedef void (Client::*_t)(QStringList );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Client::pNameListModelChanged)) {
                *result = 4;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        Client *_t = static_cast<Client *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->getErr(); break;
        case 1: *reinterpret_cast< QStringList*>(_v) = _t->printerNameList(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        Client *_t = static_cast<Client *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setErr(*reinterpret_cast< QString*>(_v)); break;
        case 1: _t->setPrinterNameList(*reinterpret_cast< QStringList*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

const QMetaObject EPT::Client::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_EPT__Client.data,
      qt_meta_data_EPT__Client,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *EPT::Client::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *EPT::Client::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_EPT__Client.stringdata0))
        return static_cast<void*>(const_cast< Client*>(this));
    return QObject::qt_metacast(_clname);
}

int EPT::Client::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 15)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 15;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 15)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 15;
    }
#ifndef QT_NO_PROPERTIES
   else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 2;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void EPT::Client::error()
{
    QMetaObject::activate(this, &staticMetaObject, 0, Q_NULLPTR);
}

// SIGNAL 1
void EPT::Client::errChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, Q_NULLPTR);
}

// SIGNAL 2
void EPT::Client::errConnected()
{
    QMetaObject::activate(this, &staticMetaObject, 2, Q_NULLPTR);
}

// SIGNAL 3
void EPT::Client::printerNameListChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 3, Q_NULLPTR);
}

// SIGNAL 4
void EPT::Client::pNameListModelChanged(QStringList _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}
QT_END_MOC_NAMESPACE

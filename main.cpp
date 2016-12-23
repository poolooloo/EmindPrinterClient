#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "client.h"
#include <QMetaObject>
#include <QVariant>
#include <QString>
#include "cupsbackend.h"
#include "printer.h"
#include <QQuickView>
#include <QQmlContext>
#include <QtQuick/QQuickItem>
#include "emindprintdbus.h"

using namespace EPT;


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);



    //client register
    qmlRegisterType<Client>("com.client.emindprint",1,0,"EmindClient");
    qmlRegisterType<CupsBackend>("com.client.CupsBackend",1,0,"CupsBackend");
    qmlRegisterType<Printer>("com.client.emindprint",1,0,"Printer");
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    QObject::connect(&engine,SIGNAL(quit()),qApp,SLOT(quit()));

    QObject* root = NULL;
    QList<QObject*> rootObjs = engine.rootObjects();
    for(int i=0;i<rootObjs.size();i++){
        if(rootObjs.at(i)->objectName() == "rootObject"){
            root = rootObjs.at(i);
            break;
        }
    }

    new Client(root);
    QObject* txErr = root->findChild<QObject*>("btnNext");
    if(txErr){
        QObject::connect(txErr,SIGNAL(clicked()),&app,SLOT(quit()));
    }

    QObject* txErr1 = root->findChild<QObject*>("errText1");
    if(txErr1){
        bool bRet = QMetaObject::invokeMethod(txErr1,"setText",Q_ARG(QString,"connecting error"));
        txErr1->setProperty("Text",QObject::tr("error error"));
        bRet = QMetaObject::invokeMethod(txErr1,"doLayout");
    }

    //modeldata
    QStringList dataList;
    dataList.append("Item 1");
    dataList.append("Item 2");
    dataList.append("Item 3");
    QQmlEngine eng;
    QStringListModel modelData;
    QQmlContext *ctxt = new QQmlContext(eng.rootContext());
    ctxt->setContextProperty("pModel",QVariant::fromValue(dataList));
    QQmlComponent component(&eng,"qrc:PrinterList.qml");
    component.create(ctxt);

    //to handle cups files
    QStringList files;
    QStringList titles;
    QStringList args = app.arguments();
    bool autoRemove = false;

    for(int i=1;i < args.count();++i){
        QString arg = args.at(i);
        if(arg == "-t" || arg == "--title"){
            if(i+1 < args.count()){
                titles<<args.at(i+1);
                i++;
                continue;
            }else{
                return 1;
            }
        }

        files << args.at(i);
    }

    EmindPrintDbus emDbus("org.EmindPrint","/EmindPrint");

    app.processEvents();

    client->loadCupsFiles(files,titles,"",autoRemove);

    return app.exec();
}



#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "client.h"
#include <QMetaObject>
#include <QVariant>
#include <QString>
using namespace EPT;

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<Client>("com.client.emindprint",1,0,"EmindClient");
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
    return app.exec();
}



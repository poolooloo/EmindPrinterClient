TEMPLATE = app

QT += qml quick network widgets printsupport
CONFIG += c++11

LIBS += -lcups

SOURCES += main.cpp \
    licensefactory.cpp \
    client.cpp \
    cupsbackend.cpp \
    printer.cpp \
    emindprintdbus.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES +=

HEADERS += \
    licensefactory.h \
    client.h \
    cupsbackend.h \
    printer.h \
    emindprintdbus.h

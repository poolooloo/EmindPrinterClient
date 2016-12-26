TEMPLATE = app

QT += qml quick network widgets printsupport dbus
CONFIG += c++11

LIBS += -lcups

SOURCES += main.cpp \
    licensefactory.cpp \
    client.cpp \
    cupsbackend.cpp \
    printer.cpp \
    emindprintdbus.cpp \
    printerlistmodel.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    CMakeList.txt \
    org.emindprinter.serveice \
    cups/emindprinter \
    cups/emindprinterbackend \
    cups/emindprinter.ppd

HEADERS += \
    licensefactory.h \
    client.h \
    cupsbackend.h \
    printer.h \
    emindprintdbus.h \
    printerlistmodel.h
<<<<<<< HEAD
=======

>>>>>>> 4e477f936dca31dbf66fd4a272d63d8cb0da1e7d
TARGET = emindprinter

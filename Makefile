#############################################################################
# Makefile for building: emindprinter
# Generated by qmake (3.0) (Qt 5.7.1)
# Project:  EmindPrint.pro
# Template: app
# Command: /usr/lib/x86_64-linux-gnu/qt5/bin/qmake -o Makefile EmindPrint.pro
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_QUICK_LIB -DQT_PRINTSUPPORT_LIB -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_QML_LIB -DQT_NETWORK_LIB -DQT_DBUS_LIB -DQT_CORE_LIB
CFLAGS        = -m64 -pipe -O2 -Wall -W -D_REENTRANT -fPIC $(DEFINES)
CXXFLAGS      = -m64 -pipe -O2 -std=gnu++11 -Wall -W -D_REENTRANT -fPIC $(DEFINES)
INCPATH       = -I. -isystem /usr/include/x86_64-linux-gnu/qt5 -isystem /usr/include/x86_64-linux-gnu/qt5/QtQuick -isystem /usr/include/x86_64-linux-gnu/qt5/QtPrintSupport -isystem /usr/include/x86_64-linux-gnu/qt5/QtWidgets -isystem /usr/include/x86_64-linux-gnu/qt5/QtGui -isystem /usr/include/x86_64-linux-gnu/qt5/QtQml -isystem /usr/include/x86_64-linux-gnu/qt5/QtNetwork -isystem /usr/include/x86_64-linux-gnu/qt5/QtDBus -isystem /usr/include/x86_64-linux-gnu/qt5/QtCore -I. -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64
QMAKE         = /usr/lib/x86_64-linux-gnu/qt5/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = emindprinter1.0.0
DISTDIR = /home/wufeiyun/ProjectEx/temp/emindprinter-1.0/.tmp/emindprinter1.0.0
LINK          = g++
LFLAGS        = -m64 -Wl,-O1
LIBS          = $(SUBLIBS) -L/usr/X11R6/lib64 -lcups -lQt5Quick -lQt5PrintSupport -lQt5Widgets -lQt5Gui -lQt5Qml -lQt5Network -lQt5DBus -lQt5Core -lGL -lpthread 
AR            = ar cqs
RANLIB        = 
SED           = sed
STRIP         = strip

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		licensefactory.cpp \
		client.cpp \
		cupsbackend.cpp \
		printer.cpp \
		emindprintdbus.cpp \
		printerlistmodel.cpp qrc_qml.cpp \
		moc_client.cpp \
		moc_emindprintdbus.cpp
OBJECTS       = main.o \
		licensefactory.o \
		client.o \
		cupsbackend.o \
		printer.o \
		emindprintdbus.o \
		printerlistmodel.o \
		qrc_qml.o \
		moc_client.o \
		moc_emindprintdbus.o
DIST          = CMakeList.txt \
		org.emindprinter.serveice \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_Attica.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KAuth.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KBookmarks.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCMUtils.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCodecs.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCompletion.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigCore.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigGui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCoreAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCrash.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KDBusAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KGlobalAccel.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KGuiAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KI18n.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIconThemes.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOCore.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOFileWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOGui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KItemViews.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KJobWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KNTLM.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KService.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KTextWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KWidgetsAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KWindowSystem.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KXmlGui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bluetooth.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bluetooth_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_designer.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_help.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_location.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_multimedia.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_nfc.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_nfc_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_positioning.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_qml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_qmltest.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_quick.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_quickwidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_script.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_scripttools.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_svg.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_uiplugin.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_uitools.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_webkit.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_webkitwidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_x11extras.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_Solid.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_SonnetCore.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_SonnetUi.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf \
		.qmake.stash \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/toolchain.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resources.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/moc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/dbuscommon.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/dbusinterfaces.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/dbusadaptors.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/uic.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/file_copies.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf \
		EmindPrint.pro licensefactory.h \
		client.h \
		cupsbackend.h \
		printer.h \
		emindprintdbus.h \
		printerlistmodel.h main.cpp \
		licensefactory.cpp \
		client.cpp \
		cupsbackend.cpp \
		printer.cpp \
		emindprintdbus.cpp \
		printerlistmodel.cpp
QMAKE_TARGET  = emindprinter
DESTDIR       = 
TARGET        = emindprinter


first: all
####### Build rules

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: EmindPrint.pro /usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_Attica.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KAuth.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KBookmarks.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCMUtils.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCodecs.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCompletion.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigCore.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigGui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCoreAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCrash.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KDBusAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KGlobalAccel.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KGuiAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KI18n.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIconThemes.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOCore.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOFileWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOGui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KItemViews.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KJobWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KNTLM.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KService.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KTextWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KWidgetsAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KWindowSystem.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KXmlGui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bluetooth.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bluetooth_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_designer.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_help.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_location.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_multimedia.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_nfc.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_nfc_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_positioning.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_qml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_qmltest.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_quick.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_quickwidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_script.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_scripttools.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_svg.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_uiplugin.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_uitools.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_webkit.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_webkitwidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_x11extras.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_Solid.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_SonnetCore.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_SonnetUi.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf \
		.qmake.stash \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/toolchain.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resources.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/moc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/dbuscommon.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/dbusinterfaces.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/dbusadaptors.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/uic.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/file_copies.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf \
		EmindPrint.pro \
		qml.qrc \
		/usr/lib/x86_64-linux-gnu/libQt5Quick.prl \
		/usr/lib/x86_64-linux-gnu/libQt5PrintSupport.prl \
		/usr/lib/x86_64-linux-gnu/libQt5Widgets.prl \
		/usr/lib/x86_64-linux-gnu/libQt5Gui.prl \
		/usr/lib/x86_64-linux-gnu/libQt5Qml.prl \
		/usr/lib/x86_64-linux-gnu/libQt5Network.prl \
		/usr/lib/x86_64-linux-gnu/libQt5DBus.prl \
		/usr/lib/x86_64-linux-gnu/libQt5Core.prl
	$(QMAKE) -o Makefile EmindPrint.pro
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_Attica.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KAuth.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KBookmarks.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCMUtils.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCodecs.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCompletion.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigCore.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigGui.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigWidgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCoreAddons.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCrash.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KDBusAddons.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KGlobalAccel.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KGuiAddons.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KI18n.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIconThemes.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOCore.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOFileWidgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOGui.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOWidgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KItemViews.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KJobWidgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KNTLM.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KService.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KTextWidgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KWidgetsAddons.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KWindowSystem.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KXmlGui.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bluetooth.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bluetooth_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_designer.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_help.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_location.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_multimedia.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_nfc.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_nfc_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_positioning.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_qml.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_qmltest.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_quick.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_quickwidgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_script.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_scripttools.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_svg.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_uiplugin.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_uitools.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_webkit.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_webkitwidgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_x11extras.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_Solid.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_SonnetCore.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_SonnetUi.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf:
.qmake.stash:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/toolchain.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resources.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/moc.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/dbuscommon.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/dbusinterfaces.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/dbusadaptors.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/opengl.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/uic.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/thread.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/file_copies.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf:
EmindPrint.pro:
qml.qrc:
/usr/lib/x86_64-linux-gnu/libQt5Quick.prl:
/usr/lib/x86_64-linux-gnu/libQt5PrintSupport.prl:
/usr/lib/x86_64-linux-gnu/libQt5Widgets.prl:
/usr/lib/x86_64-linux-gnu/libQt5Gui.prl:
/usr/lib/x86_64-linux-gnu/libQt5Qml.prl:
/usr/lib/x86_64-linux-gnu/libQt5Network.prl:
/usr/lib/x86_64-linux-gnu/libQt5DBus.prl:
/usr/lib/x86_64-linux-gnu/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) -o Makefile EmindPrint.pro

qmake_all: FORCE


all: Makefile $(TARGET)

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents $(DIST) $(DISTDIR)/
	$(COPY_FILE) --parents qml.qrc $(DISTDIR)/
	$(COPY_FILE) --parents licensefactory.h client.h cupsbackend.h printer.h emindprintdbus.h printerlistmodel.h $(DISTDIR)/
	$(COPY_FILE) --parents main.cpp licensefactory.cpp client.cpp cupsbackend.cpp printer.cpp emindprintdbus.cpp printerlistmodel.cpp $(DISTDIR)/


clean: compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


distclean: clean 
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) .qmake.stash
	-$(DEL_FILE) Makefile


####### Sub-libraries

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

check: first

benchmark: first

compiler_rcc_make_all: qrc_qml.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_qml.cpp
qrc_qml.cpp: qml.qrc \
		/usr/lib/x86_64-linux-gnu/qt5/bin/rcc \
		client.js \
		emindprinter.ppd \
		PrinterList.qml \
		main.qml \
		ClientLogin.qml
	/usr/lib/x86_64-linux-gnu/qt5/bin/rcc -name qml qml.qrc -o qrc_qml.cpp

compiler_moc_header_make_all: moc_client.cpp moc_emindprintdbus.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_client.cpp moc_emindprintdbus.cpp
moc_client.cpp: client.h \
		/usr/lib/x86_64-linux-gnu/qt5/bin/moc
	/usr/lib/x86_64-linux-gnu/qt5/bin/moc $(DEFINES) -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64 -I/home/wufeiyun/ProjectEx/temp/emindprinter-1.0 -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtQuick -I/usr/include/x86_64-linux-gnu/qt5/QtPrintSupport -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtQml -I/usr/include/x86_64-linux-gnu/qt5/QtNetwork -I/usr/include/x86_64-linux-gnu/qt5/QtDBus -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/c++/6 -I/usr/include/x86_64-linux-gnu/c++/6 -I/usr/include/c++/6/backward -I/usr/lib/gcc/x86_64-linux-gnu/6/include -I/usr/local/include -I/usr/lib/gcc/x86_64-linux-gnu/6/include-fixed -I/usr/include/x86_64-linux-gnu -I/usr/include client.h -o moc_client.cpp

moc_emindprintdbus.cpp: emindprintdbus.h \
		/usr/lib/x86_64-linux-gnu/qt5/bin/moc
	/usr/lib/x86_64-linux-gnu/qt5/bin/moc $(DEFINES) -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64 -I/home/wufeiyun/ProjectEx/temp/emindprinter-1.0 -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtQuick -I/usr/include/x86_64-linux-gnu/qt5/QtPrintSupport -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtQml -I/usr/include/x86_64-linux-gnu/qt5/QtNetwork -I/usr/include/x86_64-linux-gnu/qt5/QtDBus -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/c++/6 -I/usr/include/x86_64-linux-gnu/c++/6 -I/usr/include/c++/6/backward -I/usr/lib/gcc/x86_64-linux-gnu/6/include -I/usr/local/include -I/usr/lib/gcc/x86_64-linux-gnu/6/include-fixed -I/usr/include/x86_64-linux-gnu -I/usr/include emindprintdbus.h -o moc_emindprintdbus.cpp

compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_rcc_clean compiler_moc_header_clean 

####### Compile

main.o: main.cpp client.h \
		cupsbackend.h \
		printer.h \
		emindprintdbus.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

licensefactory.o: licensefactory.cpp licensefactory.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o licensefactory.o licensefactory.cpp

client.o: client.cpp client.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o client.o client.cpp

cupsbackend.o: cupsbackend.cpp cupsbackend.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o cupsbackend.o cupsbackend.cpp

printer.o: printer.cpp printer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o printer.o printer.cpp

emindprintdbus.o: emindprintdbus.cpp emindprintdbus.h \
		client.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o emindprintdbus.o emindprintdbus.cpp

printerlistmodel.o: printerlistmodel.cpp printerlistmodel.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o printerlistmodel.o printerlistmodel.cpp

qrc_qml.o: qrc_qml.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qrc_qml.o qrc_qml.cpp

moc_client.o: moc_client.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_client.o moc_client.cpp

moc_emindprintdbus.o: moc_emindprintdbus.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_emindprintdbus.o moc_emindprintdbus.cpp

####### Install

install_target: first FORCE
	@test -d $(INSTALL_ROOT)/opt/EmindPrint/bin || mkdir -p $(INSTALL_ROOT)/opt/EmindPrint/bin
	-$(INSTALL_PROGRAM) $(QMAKE_TARGET) $(INSTALL_ROOT)/opt/EmindPrint/bin/$(QMAKE_TARGET)
	-$(STRIP) $(INSTALL_ROOT)/opt/EmindPrint/bin/$(QMAKE_TARGET)

uninstall_target: FORCE
	-$(DEL_FILE) $(INSTALL_ROOT)/opt/EmindPrint/bin/$(QMAKE_TARGET)
	-$(DEL_DIR) $(INSTALL_ROOT)/opt/EmindPrint/bin/ 


install: install_target  FORCE

uninstall: uninstall_target  FORCE

FORCE:


TEMPLATE  = lib

CONFIG   += plugin

CONFIG(debug, debug|release) {
    DESTDIR = ../../../plugins
    QMAKE_LIBDIR += ../../lib
    LIBS += -lqdltd
}
else {
    DESTDIR = ../../../plugins
    QMAKE_LIBDIR += ../../lib
    LIBS += -lqdlt
}

TARGET = $$qtLibraryTarget(dummycontrolplugin)

# Defines and Header Directories
DEFINES  += QT_VIEWER

INCLUDEPATH += ../../include

# Project files
HEADERS +=  dummycontrolplugin.h \
            form.h \
            ../../include/qdlt.h \
            ../../include/plugininterface.h

SOURCES +=  dummycontrolplugin.cpp \
            form.cpp

FORMS +=    form.ui

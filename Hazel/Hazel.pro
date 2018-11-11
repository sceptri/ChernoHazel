#-------------------------------------------------
#
# Project created by QtCreator 2018-10-30T09:26:31
#
#-------------------------------------------------

QT       -= core gui

TARGET = Hazel
TEMPLATE = lib
CONFIG += c++1z

DEFINES += HAZEL_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    src/sources/Application.cpp \
    src/sources/Log.cpp

HEADERS += \
    src/headers/Application.h \
    src/headers/Core.h \
    Hazel.h \
    src/headers/EntryPoint.h \
    src/headers/Log.h

INCLUDEPATH += \
    src/headers \
    $$PWD/vendor/spdlog/include \

message($$PWD)

unix {
    target.path = /usr/lib
    INSTALLS += target
}


win32 {
    DEFINES += \
        HZ_PLATFORM_WINDOWS \
        HZ_BUILD_DLL
}

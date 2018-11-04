TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
    src/sources/SandboxApp.cpp

INCLUDEPATH += \
    $$PWD/../Hazel/

LIBS += \
    -L$$OUT_PWD/../Hazel/ -lHazel

win32 {
    DEFINES += \
        HZ_PLATFORM_WINDOWS \
}

TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += c++1z


SOURCES += \
    src/sources/SandboxApp.cpp

INCLUDEPATH += \
    $$PWD/../Hazel/\
    $$PWD/../Hazel/vendor/spdlog/include \

LIBS += \
    -L$$OUT_PWD/../Hazel/ -lHazel

win32 {
    DEFINES += \
        HZ_PLATFORM_WINDOWS \
}

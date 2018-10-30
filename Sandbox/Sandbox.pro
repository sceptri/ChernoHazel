TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
    src/sources/Application.cpp

INCLUDEPATH += \
    $$PWD/../Hazel/src/headers

LIBS += \
    -L$$OUT_PWD/../Hazel/ -lHazel

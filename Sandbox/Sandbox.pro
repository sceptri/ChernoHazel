TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
    src/sources/Application.cpp

include($$PWD/../Hazel/hazelheaders.pri)

LIBS += \
    -L$$OUT_PWD/../Hazel/ -lHazel

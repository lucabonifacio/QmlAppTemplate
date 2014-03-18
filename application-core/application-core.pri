QT += qml quick

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include

LIBS += -lapplication-core

win32 {
    CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../application-core/release/
    CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../application-core/debug/

    CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../application-core/release/application-core.lib
    CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../application-core/debug/application-core.lib
}

unix {
    LIBS += -L$$OUT_PWD/../application-core/
    PRE_TARGETDEPS += $$OUT_PWD/../application-core/libapplication-core.a

    QMAKE_LFLAGS += -fprofile-arcs
}

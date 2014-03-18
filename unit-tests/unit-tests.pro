TEMPLATE = app

CONFIG += qmltestcase
CONFIG -= app_bundle

DEFINES += QUICK_TEST_SOURCE_DIR=\\\"$$PWD\\\"

SOURCES += \
	test.cpp

OTHER_FILES += \
	utils.js \
	tst_screen.qml

TEMPLATE = subdirs

#CONFIG += ordered

SUBDIRS += \
	main-app \
	application-core \
	unit-tests

OTHER_FILES += \
	common.pri

# dependencies
main-app.depends = application-core
#unit-tests.depends = application-core

CONFIG +=c++11

QMAKE_CXXFLAGS += -std=c++11

unix: QMAKE_CXXFLAGS = -mmacosx-version-min=10.6

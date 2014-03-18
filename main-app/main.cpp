#include <QtCore/QObject>

#include "application-core/application-core.h"

int main(int argc, char *argv[])
{
    Q_INIT_RESOURCE(application_core);

    QmlVideoApp::Application application;
    return application.execute(argc, argv);
}

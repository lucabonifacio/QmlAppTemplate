#include <QtGui/QGuiApplication>
#include <QtQuick/QQuickView>
#include <QtQml/QQmlEngine>
#include <QtQml/QQmlContext>

//#include <xxx/controller.h>
//#include <xxx/communication.h>
//#include <xxx/udp_socket.h>

#include "application-core/application-core.h"

namespace QmlVideoApp {

Application::Application()
{
}

int Application::execute(int argc, char * argv[])
{
    QGuiApplication application(argc, argv);
    QQuickView view;

//    Controller controller;
//    view.engine()->rootContext()->setContextProperty("controller", &controller);

    view.connect(view.engine(), SIGNAL(quit()), SLOT(close()));
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.setSource(QUrl("qrc:/MainWindow.qml"));

    view.show();

    return application.exec();
}

} // QmlVideoApp

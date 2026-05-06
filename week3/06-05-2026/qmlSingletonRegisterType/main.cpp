#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "backendclass.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    backendCLass::registerCPP();
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("qmlSingletonRegisterType", "Main");

    return QCoreApplication::exec();
}

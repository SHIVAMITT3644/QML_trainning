#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "backendhelper.h"

int main(int argc, char *argv[])
{
    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    backendHelper* cBackendHelper = new backendHelper(&app);
engine.rootContext()->setContextProperty("cBackendHelper", cBackendHelper);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("contextPropertyIntegraton", "Main");

    return QCoreApplication::exec();
}

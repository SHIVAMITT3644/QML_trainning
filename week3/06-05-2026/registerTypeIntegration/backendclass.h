#ifndef BACKENDCLASS_H
#define BACKENDCLASS_H

#include <QObject>
#include <QDebug>
#include <QQmlEngine>

class backendCLass : public QObject
{
    Q_OBJECT
public:
    explicit backendCLass(QObject *parent = nullptr);
    Q_INVOKABLE void printSomething();
    Q_INVOKABLE int getNum();
    static void registerCPP();

signals:
};

#endif // BACKENDCLASS_H

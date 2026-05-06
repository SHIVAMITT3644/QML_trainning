#ifndef BACKENDHELPER_H
#define BACKENDHELPER_H

#include <QObject>
#include <QDebug>
#include <QDateTime>

class backendHelper : public QObject
{
    Q_OBJECT
    int counter = 0;
    Q_PROPERTY(int counter READ getCounter NOTIFY counterChanged)
public:
    explicit backendHelper(QObject* parent = nullptr);
    Q_INVOKABLE void printText();
    Q_INVOKABLE QString getDate();
    Q_INVOKABLE void incCounter();
    Q_INVOKABLE int getCounter();

signals:
    void counterChanged();
};

#endif // BACKENDHELPER_H

#ifndef BACKENDCLASS_H
#define BACKENDCLASS_H

#include <QObject>
#include <QQmlEngine>

class BackendClass : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    QML_SINGLETON
public:
    explicit BackendClass(QObject *parent = nullptr);

    Q_PROPERTY(int myNumber READ myNumber WRITE setMyNumber NOTIFY myNumberChanged FINAL);

    int myNumber() const;
    void setMyNumber(int newMyNumber);

signals:
    void myNumberChanged();
private:
    int m_myNumber;
};

#endif // BACKENDCLASS_H

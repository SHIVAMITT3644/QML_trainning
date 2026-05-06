#include "backendhelper.h"

backendHelper::backendHelper(QObject* parent) :
    QObject(parent){}

void backendHelper::printText()
{

    qInfo() << "cBackendPinged";
}

QString backendHelper::getDate()
{

    return QDateTime::currentDateTime().toString();
}

void backendHelper::incCounter()
{
    counter++;
    emit counterChanged();
}

int backendHelper::getCounter()
{
    return counter;
}

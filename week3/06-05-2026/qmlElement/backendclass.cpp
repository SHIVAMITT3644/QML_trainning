#include "backendclass.h"

BackendClass::BackendClass(QObject *parent)
    : QObject{parent}
{}

int BackendClass::myNumber() const
{
    return m_myNumber;
}

void BackendClass::setMyNumber(int newMyNumber)
{
    if (m_myNumber == newMyNumber)
        return;
    m_myNumber = newMyNumber;
    emit myNumberChanged();
}

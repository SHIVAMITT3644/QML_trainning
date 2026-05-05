#include "test.h"

Test::Test(QObject *parent)
    : QObject(parent)
{
    qInfo() << this << "Constructed" << parent;
}

Test::~Test()
{
    // Print all children before destruction
    foreach(QObject* child, children())
    {
        qInfo() << this << "- child -" << child;
    }

    qInfo() << this << "Deconstructed" << parent();
}
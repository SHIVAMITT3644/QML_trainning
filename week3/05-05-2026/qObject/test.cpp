#include "test.h"

Test::Test(QObject *parent)
    : QObject{parent}
{}

void Test::dostuff()
{
    qInfo() << "DO these stuff";
    emit close();
}

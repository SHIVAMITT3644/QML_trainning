#include "backendclass.h"

backendCLass::backendCLass(QObject *parent)
    : QObject{parent}
{}

void backendCLass::printSomething()
{

    qInfo() << "Hello nishi";
}

void backendCLass::registerCPP()
{
    qmlRegisterType<backendCLass>("shivam.com",1,1,"Backend");
}

int backendCLass::getNum()
{
    return 21;
}

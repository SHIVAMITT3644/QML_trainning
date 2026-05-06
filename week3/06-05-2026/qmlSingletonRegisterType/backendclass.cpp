#include "backendclass.h"

static backendCLass * m_obj = nullptr;

backendCLass::backendCLass(QObject *parent)
    : QObject{parent}
{}

void backendCLass::printSomething()
{

    qInfo() << "Hello nishi";
}

void backendCLass::registerCPP()
{
    qmlRegisterSingletonType<backendCLass>("shivam.com",1,1,"Backend",singletonProvider);
}

QObject *backendCLass::singletonProvider(QQmlEngine *, QJSEngine *)
{
    if(m_obj == nullptr)
    {
        m_obj = new backendCLass();
    }

    return m_obj;
}

int backendCLass::getNum()
{
    return 21;
}

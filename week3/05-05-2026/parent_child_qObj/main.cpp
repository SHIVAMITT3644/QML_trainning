#include <QCoreApplication>
#include <QTimer>
#include "test.h"

// Setting parent in constructor
Test* getTest(QObject* parent)
{
    return new Test(parent);
}

// Setting parent later (no parent initially)
Test* getTest()
{
    return new Test(); //  No parent
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QTimer timer;
    timer.singleShot(3000, &a, &QCoreApplication::quit);

    // Parent set in constructor
    Test* dog = getTest(&a);
    dog->setObjectName("Spot");

    // No parent → potential memory leak
    Test* cat = getTest();
    cat->setObjectName("Kitty");
    cat-> setParent(dog);

    int value = a.exec();
    qInfo() << "Exit code:" << value;

    return value;
}
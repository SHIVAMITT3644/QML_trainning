import QtQuick
import QtQuick.Controls
import shivam.com 1.1

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("qml Singleton Register Type")

    Text
    {
        id:textId
        text: Backend.getNum()
        anchors.centerIn: parent
        font.pointSize: 21
    }

    Button
    {
        text: "click"
        anchors.top:  textId.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked:
        {
            Backend.printSomething()
        }
    }
}
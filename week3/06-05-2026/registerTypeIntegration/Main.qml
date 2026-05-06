import QtQuick
import QtQuick.Controls
import shivam.com 1.1

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Backend
    {
        id: cBackendCpp
    }

    Text
    {
        id:textId
        text: cBackendCpp.getNum()
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
            cBackendCpp.printSomething()
        }
    }
}
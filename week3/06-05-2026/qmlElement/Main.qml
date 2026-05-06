import QtQuick
import qmlElement
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column
    {
        anchors.centerIn: parent
        spacing:20
        Text
        {
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 21
            text:BackendClass.myNumber
        }

        Button
        {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Increase"
            onClicked:
            {
                BackendClass.myNumber += 5
            }
        }
    }


}

import QtQuick
import QtQuick.Controls

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Dial Demo")

    Item {
        anchors.centerIn: parent
        width: 200
        height: 200

        Dial {
            id: dialId
            anchors.fill: parent
            from: 1
            to: 100
            value: 50
        }

        Text {
            anchors.centerIn: parent
            text: Math.ceil(dialId.value)
            font.pointSize: 22
            font.bold: true
            color: "black"
        }
    }
}
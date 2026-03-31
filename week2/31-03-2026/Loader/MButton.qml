import QtQuick
import QtQuick.Controls

Rectangle {
    id: root
    width: 120
    height: 50
    color: "blue"
    radius: 8

    property string text: "Default"

    Text {
        anchors.centerIn: parent
        text: root.text
        color: "white"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: console.log("Button clicked:", root.text)
    }
}
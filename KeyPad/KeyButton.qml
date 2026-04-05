import QtQuick
import QtQuick.Controls

Button {
    id: root

    implicitWidth: 80
    implicitHeight: 52

    font.pixelSize: 16

    background: Rectangle {
        radius: 8
        border.width: 1
        border.color: "#777"

        color: root.down ? "#cfcfcf" : "#f3f3f3"
    }

    contentItem: Text {
        text: root.text
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font: root.font
        color: "#202020"
    }
}

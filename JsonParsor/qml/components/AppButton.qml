import QtQuick
import QtQuick.Controls

Button {
    id: root

    property string btnText: "Button"
    property color bgColor: "#2196f3"
    property color textColor: "white"
    property int btnWidth: 120
    property int btnHeight: 40
    property int radius: 8

    width: btnWidth
    height: btnHeight

    background: Rectangle {
        radius: root.radius
        color: root.bgColor
    }

    contentItem: Text {
        text: root.btnText
        color: root.textColor
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}
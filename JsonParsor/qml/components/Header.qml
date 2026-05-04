import QtQuick
import QtQuick.Controls

Rectangle {
    height: 50
    width: parent.width

    property var theme

    color: theme.getTheme().backgroundColor

    Row {
        anchors.centerIn: parent
        spacing: 20

        Text {
            text: "City App"
            color: theme.getTheme().textColor
            font.bold: true
        }

        Button {
            text: "Theme"
            onClicked: theme.nextTheme()
        }
    }
}
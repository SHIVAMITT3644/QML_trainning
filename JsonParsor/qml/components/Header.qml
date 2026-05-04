import QtQuick
import QtQuick.Controls

Rectangle {
    height: 50
    width: parent.width

    property var theme
    property var constant

    color: theme.getTheme().backgroundColor

    Row {
        anchors.centerIn: parent
        spacing: 20

        Text {
            text: constant.appName
            color: theme.getTheme().textColor
            font.bold: true
        }

        Button {
            text: theme.themeName()
            onClicked: theme.nextTheme()
        }
    }
}

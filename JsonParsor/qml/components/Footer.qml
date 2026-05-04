import QtQuick
import QtQuick.Controls
import "../components"

Rectangle {
    property var theme
    height: 50
    width: parent.width
    color:theme.getTheme().backgroundColor

    signal refreshClicked()
    signal addClicked()

    Row {
        anchors.centerIn: parent
        spacing: 20

        AppButton {
            btnText: "Refresh"
            bgColor: theme.lightBlue
            onClicked: refreshClicked()
        }

        AppButton {
            btnText: "Add"
            bgColor: theme.darkGreen
            onClicked: addClicked()
        }
    }
}
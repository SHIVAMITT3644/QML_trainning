import QtQuick
import QtQuick.Controls
import "../components"

Rectangle {
    property var theme
    property var constant
    height: 50
    width: parent.width
    color:theme.getTheme().backgroundColor

    signal refreshClicked()
    signal addClicked()

    Row {
        anchors.centerIn: parent
        spacing: 20

        AppButton {
            btnText: constant.refreshText
            bgColor: theme.lightBlue
            onClicked: refreshClicked()
        }

        AppButton {
            btnText: constant.addText
            bgColor: theme.darkGreen
            onClicked: addClicked()
        }
    }
}

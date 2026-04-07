import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column
    {
        anchors.centerIn: parent
        spacing: 21

        Button
        {
            id:buttonId
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Choose Color"
            height: buttonId.implicitHeight
            width: buttonId.implicitWidth + 10
            onClicked:
            {
                colorDialog.open()
            }
        }

        Rectangle
        {
            id: rectangleId
            height: 251
            width:251
            border.color: "black"
            border.width: 2
        }

        ColorDialog
        {
            id : colorDialog
            title:"choose your color"
            onAccepted:
            {
                console.log("Selected : " + selectedColor)
                rectangleId.color = selectedColor
            }

            onRejected:
            {
                console.log("Dialogue has rejected")
            }

            onSelectedColorChanged:
            {
                console.log("current color changed")
            }
        }
    }
}

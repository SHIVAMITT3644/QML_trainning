import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        spacing: 20
        anchors.centerIn: parent

        Text {
            id: textId
            text: "Hello Nikshiv"
            font.family: "Ubuntu Regular"
            font.pointSize: 18
        }

        Button {
            text: "Choose Font"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: fontDialogId.open()
        }

        FontDialog
        {
           id: fontDialogId
           title : "Choose font you want"
           currentFont: textId.font

           onAccepted:
           {
               textId.font = selectedFont
           }
            onRejected:
            {
                console.log("Rejected Dialog")
            }

        }
    }
}

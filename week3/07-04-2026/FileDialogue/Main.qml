import QtQuick 2.12
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Dialogs

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("FileDialog Demo")

    Column {
        spacing: 20
        anchors.centerIn: parent

        Button {
            text: "Choose File"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: fileDialogId.open()
        }

        Text {
            id: textId
            text: "User hasn't chosen yet"
            wrapMode: Text.Wrap
            width: 400
        }

        FileDialog {
            id: fileDialogId
            title: "Choose File"
            fileMode: FileDialog.OpenFiles

            onAccepted: {
                if (selectedFiles.length > 0) {
                    textId.text = selectedFiles[0]
                } else {
                    textId.text = "No file selected"
                }

                for (var i = 0; i < selectedFiles.length; i++) {
                    console.log("Value " + i + " is: " + selectedFiles[i])
                }
            }

            onRejected: {
                console.log("Dialog rejected")
            }
        }
    }
}
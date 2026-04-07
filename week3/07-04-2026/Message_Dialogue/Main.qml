import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Dialogs

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("MessageDialog Demo")


    Button{
        text : "Push Me"
        onClicked: {
            messageDialogId.open()
        }
    }


    MessageDialog {
        id: messageDialogId
        title: "May I have your attention please"
        text: "Failed to open file"
        informativeText: "Please check the file path."

        detailedText: "Error code: 404\nPath: /home/shivam/data.txt\nPermission denied"
        buttons: MessageDialog.Ok | MessageDialog.Cancel
        onAccepted: {
            console.log("And of course you could only agree.")

        }
        onRejected: {
            console.log("You rejected the dialog")
        }


    }
}

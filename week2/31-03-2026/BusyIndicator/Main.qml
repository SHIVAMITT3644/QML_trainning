import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true

    ColumnLayout {
        width: parent.width
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        spacing: 10

        BusyIndicator {
            id: busyControllerId
            running: false
            visible: false
            Layout.alignment: Qt.AlignHCenter
        }

        Button {
            text: "Running"
            Layout.fillWidth: true

            onClicked: {
                busyControllerId.running = true
                busyControllerId.visible = true
            }
        }

        Button {
            text: "Not Running"
            Layout.fillWidth: true

            onClicked: {
                busyControllerId.running = false
                busyControllerId.visible = false
            }
        }
    }
}
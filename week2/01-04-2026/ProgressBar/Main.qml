import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("ProgressBar Demo")

    Column {
        width: parent.width
        spacing: 20

        Button {
            text : "Start"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                progressBarId.value = 78
                progressBarId1.value = 0
                timerId.start()
            }
        }

        Dial {
            id : dialId
            from : 1
            to : 100
            value : 40
            anchors.horizontalCenter: parent.horizontalCenter

            onValueChanged: {
                progressBarId.value = value
            }
        }

        ProgressBar {
            id : progressBarId
            from : 1
            to : 100
            value : 40
            anchors.horizontalCenter: parent.horizontalCenter
        }

        ProgressBar {
            id : progressBarId1
            from: 0
            to: 100
            value: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Timer {
            id: timerId
            interval: 100
            repeat: true

            onTriggered: {
                progressBarId1.value += 1

                if (progressBarId1.value >= 100) {
                    stop()
                }
            }
        }
    }
}
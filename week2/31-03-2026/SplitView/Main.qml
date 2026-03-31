import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("SplitView Demo")

    SplitView {
        anchors.fill: parent
        orientation: Qt.Horizontal

        Rectangle {
            SplitView.preferredWidth: 200
            SplitView.maximumWidth: 400
            color: "lightblue"

            Text {
                text: "View 1"
                anchors.centerIn: parent
            }
        }

        Rectangle {
            SplitView.minimumWidth: 50
            SplitView.fillWidth: true
            color: "lightgray"

            Text {
                text: "View 2"
                anchors.centerIn: parent
            }
        }

        Rectangle {
            SplitView.preferredWidth: 200
            color: "lightgreen"

            Text {
                text: "View 3"
                anchors.centerIn: parent
            }
        }
    }
}
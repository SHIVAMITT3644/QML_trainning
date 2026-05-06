import QtQuick
import QtQuick.Controls

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Context Property Integration")

    property string currentDate: ""

    Column {
        anchors.centerIn: parent
        spacing: 20

        Button {
            text: "Click Me"

            onClicked: {
                cBackendHelper.printText()
                currentDate = cBackendHelper.getDate()
                cBackendHelper.incCounter();
                console.log(cBackendHelper.getCounter())
            }
        }

        Text {
            text: currentDate
            font.pointSize: 15
        }

        Text {
            text: cBackendHelper.counter
            font.pointSize: 15
        }
    }
}
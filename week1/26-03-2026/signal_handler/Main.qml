import QtQuick
import QtQuick.Window

Window {
    id: db
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string col: "red"

    Rectangle {
        id: containerRectId
        anchors.centerIn: parent
        width: parent.width / 2
        height: parent.height / 2
        color: col
        border {
            color: "blue"
            width: 3
        }

        signal greet(string message,string message2)

        onGreet: {
            console.log("on greet signal triggered")
        }

        function myGreet(mMessage,gMessage) {
            console.log("signal slot triggered: " + mMessage + gMessage)
        }

        onWidthChanged: {
            if (width < 300) {
                col = "red"
            } else if (width >= 300 && width < 400) {
                col = "blue"
            } else {
                col = "green"
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                containerRectId.greet("hii bro","shivam")
            }
        }

        Component.onCompleted: {
            containerRectId.greet.connect(containerRectId.myGreet)
        }
    }
}
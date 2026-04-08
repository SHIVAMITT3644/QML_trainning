import QtQuick
import QtQuick.Window

Window {
    visible: true
    width: 400
    height: 300
    title: "Click vs Double Click"

    // Rectangle {
    //     anchors.centerIn: parent
    //     width: 200
    //     height: 120
    //     color: "lightblue"
    //     radius: 10

    //     MouseArea {
    //         anchors.fill: parent

    //         onClicked: {
    //             console.log("Single Click detected")
    //         }

    //         onDoubleClicked: {
    //             console.log("Double Click detected")
    //         }
    //     }
    // }
    Rectangle {
        width: 200; height: 120
        color: "lightblue"

        property bool doubleClicked: false

        MouseArea {
            anchors.fill: parent

            onClicked: {
                if (!parent.doubleClicked) {
                    console.log("Single Click")
                }
                parent.doubleClicked = false
            }

            onDoubleClicked: {
                parent.doubleClicked = true
                console.log("Double Click")
            }
        }
    }
}
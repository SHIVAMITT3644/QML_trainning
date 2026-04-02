import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("RangeSlider Demo")

    Row {
        spacing: 40
        width: parent.width
        anchors.centerIn: parent

        RangeSlider {
            id: rangeSliderId
            width: 320
            height: 70

            from: 1
            to: 100
            first.value: 25
            second.value: 75

            first.onValueChanged: {
                console.log("First value changed to : " + first.value)
            }

            second.onValueChanged: {
                console.log("Second value changed to : " + second.value)
            }

            background: Item {
                x: rangeSliderId.leftPadding
                y: rangeSliderId.topPadding + rangeSliderId.availableHeight / 2 - height / 2
                width: rangeSliderId.availableWidth
                height: 12

                Rectangle {
                    anchors.fill: parent
                    radius: height / 2
                    color: "#2b2b3c"
                    border.color: "#4a4a60"
                    border.width: 1
                }

                Rectangle {
                    x: rangeSliderId.first.visualPosition * parent.width
                    width: rangeSliderId.second.visualPosition * parent.width - x
                    height: parent.height
                    radius: height / 2
                    color: "#4fc3f7"
                }

                Rectangle {
                    x: rangeSliderId.first.visualPosition * parent.width
                    width: rangeSliderId.second.visualPosition * parent.width - x
                    height: parent.height
                    radius: height / 2
                    color: "#ffffff"
                    opacity: 0.08
                }
            }

            first.handle: Item {
                x: rangeSliderId.leftPadding + rangeSliderId.first.visualPosition * (rangeSliderId.availableWidth - width)
                y: rangeSliderId.topPadding + rangeSliderId.availableHeight / 2 - height / 2
                width: 26
                height: 26

                Rectangle {
                    anchors.centerIn: parent
                    width: 26
                    height: 26
                    radius: 13
                    color: rangeSliderId.first.pressed ? "#81d4fa" : "#29b6f6"
                    border.color: "white"
                    border.width: 2
                }

                Rectangle {
                    anchors.centerIn: parent
                    width: 38
                    height: 38
                    radius: 19
                    color: "#29b6f6"
                    opacity: rangeSliderId.first.pressed ? 0.18 : 0.08
                    z: -1
                }

                Rectangle {
                    anchors.bottom: parent.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottomMargin: 8
                    width: 46
                    height: 24
                    radius: 8
                    color: "#1e1e2f"
                    border.color: "#29b6f6"
                    border.width: 1

                    Text {
                        anchors.centerIn: parent
                        text: Math.round(rangeSliderId.first.value)
                        color: "white"
                        font.pixelSize: 12
                        font.bold: true
                    }
                }
            }

            second.handle: Item {
                x: rangeSliderId.leftPadding + rangeSliderId.second.visualPosition * (rangeSliderId.availableWidth - width)
                y: rangeSliderId.topPadding + rangeSliderId.availableHeight / 2 - height / 2
                width: 26
                height: 26

                Rectangle {
                    anchors.centerIn: parent
                    width: 26
                    height: 26
                    radius: 13
                    color: rangeSliderId.second.pressed ? "#ffcc80" : "#ff9800"
                    border.color: "white"
                    border.width: 2
                }

                Rectangle {
                    anchors.centerIn: parent
                    width: 38
                    height: 38
                    radius: 19
                    color: "#ff9800"
                    opacity: rangeSliderId.second.pressed ? 0.18 : 0.08
                    z: -1
                }

                Rectangle {
                    anchors.bottom: parent.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottomMargin: 8
                    width: 46
                    height: 24
                    radius: 8
                    color: "#1e1e2f"
                    border.color: "#ff9800"
                    border.width: 1

                    Text {
                        anchors.centerIn: parent
                        text: Math.round(rangeSliderId.second.value)
                        color: "white"
                        font.pixelSize: 12
                        font.bold: true
                    }
                }
            }
        }
    }
}

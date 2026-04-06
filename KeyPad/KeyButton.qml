import QtQuick

Item {
    id: root

    property alias text: buttonText.text
    property string keyAction: ""

    signal clicked()
    signal doubleClicked()

    implicitWidth: 80
    implicitHeight: 52

    property bool pressed: mouseArea.pressed
    property bool waitingForSecondClick: false

    Timer {
        id: singleClickTimer
        interval: 250
        repeat: false
        onTriggered: {
            root.waitingForSecondClick = false
            root.clicked()
        }
    }

    Rectangle {
        anchors.fill: parent
        radius: 8
        border.width: 1
        border.color: {
            if (root.keyAction === "layoutNumber" ||
                root.keyAction === "layoutAlpha" ||
                root.keyAction === "layoutSpecial") {
                return "#5b9cff"
            }

            if (root.keyAction === "shift" ||
                root.keyAction === "backspace" ||
                root.keyAction === "enter" ||
                root.keyAction === "dismiss" ||
                root.keyAction === "space") {
                return "#d9902f"
            }

            if (root.keyAction === "left" ||
                root.keyAction === "right") {
                return "#888888"
            }

            return "#777777"
        }

        color: {
            if (root.keyAction === "layoutNumber" ||
                root.keyAction === "layoutAlpha" ||
                root.keyAction === "layoutSpecial") {
                return root.pressed ? "#b8d8ff" : "#d0e6ff"
            }

            if (root.keyAction === "shift" ||
                root.keyAction === "backspace" ||
                root.keyAction === "enter" ||
                root.keyAction === "dismiss" ||
                root.keyAction === "space") {
                return root.pressed ? "#ffcc80" : "#ffe0b2"
            }

            if (root.keyAction === "left" ||
                root.keyAction === "right") {
                return root.pressed ? "#d6d6d6" : "#e8e8e8"
            }

            return root.pressed ? "#dcdcdc" : "#f3f3f3"
        }
    }

    Text {
        id: buttonText
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 16

        color: {
            if (root.keyAction === "layoutNumber" ||
                root.keyAction === "layoutAlpha" ||
                root.keyAction === "layoutSpecial") {
                return "#0d47a1"
            }

            if (root.keyAction === "shift" ||
                root.keyAction === "backspace" ||
                root.keyAction === "enter" ||
                root.keyAction === "dismiss" ||
                root.keyAction === "space") {
                return "#8a4b00"
            }

            return "#202020"
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent

        onClicked: {
            if (root.keyAction === "shift") {
                if (root.waitingForSecondClick) {
                    root.waitingForSecondClick = false
                    singleClickTimer.stop()
                    root.doubleClicked()
                } else {
                    root.waitingForSecondClick = true
                    singleClickTimer.start()
                }
            } else {
                root.clicked()
            }
        }
    }
}

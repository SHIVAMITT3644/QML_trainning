import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Popup {
    id: root

    property string groupText: ""
    property bool upperCase: false

    signal characterSelected(string value)

    modal: true
    focus: true
    width: 250
    height: 120
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

    function openFor(groupValue, isUpperCase) {
        groupText = groupValue
        upperCase = isUpperCase
        open()
    }

    background: Rectangle {
        radius: 10
        color: "white"
        border.color: "#888"
        border.width: 1
    }

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 10

        Label {
            text: "Select character"
            font.bold: true
            Layout.alignment: Qt.AlignHCenter
        }

        RowLayout {
            Layout.fillWidth: true
            spacing: 8

            Repeater {
                model: root.groupText.length

                delegate: KeyButton {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 44

                    text: {
                        var ch = root.groupText.charAt(index)
                        return root.upperCase ? ch.toUpperCase() : ch.toLowerCase()
                    }

                    onClicked: {
                        root.characterSelected(text)
                        root.close()
                    }
                }
            }
        }
    }
}

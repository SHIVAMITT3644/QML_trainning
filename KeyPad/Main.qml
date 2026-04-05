import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: window
    width: 420
    height: 720
    visible: true
    title: "Feature Phone Keypad"

    function insertAtCursor(value) {
        var pos = textArea.cursorPosition
        textArea.insert(pos, value)
        textArea.cursorPosition = pos + value.length
        textArea.forceActiveFocus()
    }

    function removePreviousCharacter() {
        if (textArea.cursorPosition > 0) {
            var start = textArea.cursorPosition - 1
            textArea.remove(start, textArea.cursorPosition)
            textArea.cursorPosition = start
        }
        textArea.forceActiveFocus()
    }

    function moveCursorLeft() {
        if (textArea.cursorPosition > 0) {
            textArea.cursorPosition = textArea.cursorPosition - 1
        }
        textArea.forceActiveFocus()
    }

    function moveCursorRight() {
        if (textArea.cursorPosition < textArea.length) {
            textArea.cursorPosition = textArea.cursorPosition + 1
        }
        textArea.forceActiveFocus()
    }

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 14
        spacing: 12

        Frame {
            Layout.fillWidth: true
            Layout.fillHeight: true

            ScrollView {
                anchors.fill: parent
                clip: true

                TextArea {
                    id: textArea
                    width: parent.width
                    wrapMode: TextEdit.Wrap
                    placeholderText: "Tap keys to type..."
                    selectByMouse: true
                    font.pixelSize: 18
                    focus: true
                }
            }
        }

        Button {
            text: "Show Keypad"
            visible: !keypadPanel.visible
            Layout.alignment: Qt.AlignHCenter

            onClicked: {
                keypadPanel.visible = true
            }
        }

        KeypadPanel {
            id: keypadPanel
            Layout.fillWidth: true
            Layout.preferredHeight: 360

            onTextRequested: function(value) {
                window.insertAtCursor(value)
            }

            onBackspaceRequested: {
                window.removePreviousCharacter()
            }

            onEnterRequested: {
                window.insertAtCursor("\n")
            }

            onSpaceRequested: {
                window.insertAtCursor(" ")
            }

            onLeftRequested: {
                window.moveCursorLeft()
            }

            onRightRequested: {
                window.moveCursorRight()
            }

            onDismissRequested: {
                keypadPanel.visible = false
            }
        }
    }
}
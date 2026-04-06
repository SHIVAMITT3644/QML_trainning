import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "KeyData.js" as KeyData

Item {
    id: root

    signal textRequested(string value)
    signal backspaceRequested()
    signal enterRequested()
    signal spaceRequested()
    signal leftRequested()
    signal rightRequested()
    signal dismissRequested()

    property bool upperCase: false
    property bool stickyUpperCase: false
    property string currentLayout: "alpha"

    function resetSingleUpperCaseIfNeeded() {
        if (root.upperCase && !root.stickyUpperCase) {
            root.upperCase = false
        }
    }

    function handleAction(action, value) {
        if (action === "group") {
            characterPopup.openFor(value, root.upperCase)
        } else if (action === "insert") {
            root.textRequested(value)
            resetSingleUpperCaseIfNeeded()
        } else if (action === "backspace") {
            root.backspaceRequested()
        } else if (action === "shift") {
            if (root.stickyUpperCase) {
                root.stickyUpperCase = false
                root.upperCase = false
            } else {
                root.upperCase = !root.upperCase
            }
        } else if (action === "shiftDouble") {
            root.stickyUpperCase = !root.stickyUpperCase
            root.upperCase = root.stickyUpperCase
        } else if (action === "enter") {
            root.enterRequested()
        } else if (action === "space") {
            root.spaceRequested()
            resetSingleUpperCaseIfNeeded()
        } else if (action === "left") {
            root.leftRequested()
        } else if (action === "right") {
            root.rightRequested()
        } else if (action === "dismiss") {
            root.dismissRequested()
        } else if (action === "layoutAlpha") {
            root.currentLayout = "alpha"
        } else if (action === "layoutNumber") {
            root.currentLayout = "number"
        } else if (action === "layoutSpecial") {
            root.currentLayout = "special"
        }
    }

    Loader {
        id: keypadLoader
        anchors.fill: parent
        sourceComponent: {
            if (root.currentLayout === "alpha")
                return alphaLayoutComponent
            if (root.currentLayout === "number")
                return numberLayoutComponent
            return specialLayoutComponent
        }
    }

    CharacterPopup {
        id: characterPopup
        anchors.centerIn: parent

        onCharacterSelected: function(value) {
            root.textRequested(value)
            root.resetSingleUpperCaseIfNeeded()
        }
    }

    Component {
        id: alphaLayoutComponent

        KeyGrid {
            keyModel: KeyData.alphaModel(root.upperCase)

            onActionTriggered: function(action, value) {
                root.handleAction(action, value)
            }
        }
    }

    Component {
        id: numberLayoutComponent

        KeyGrid {
            keyModel: KeyData.numberModel()

            onActionTriggered: function(action, value) {
                root.handleAction(action, value)
            }
        }
    }

    Component {
        id: specialLayoutComponent

        KeyGrid {
            keyModel: KeyData.specialModel()

            onActionTriggered: function(action, value) {
                root.handleAction(action, value)
            }
        }
    }
}

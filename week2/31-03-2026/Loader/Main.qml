import QtQuick
import QtQuick.Controls

Window {
    visible: true
    width: 400
    height: 300

    Column {
        anchors.centerIn: parent
        spacing: 10

        Button {
            text: "Load MButton"
            onClicked: buttonLoader.source = "MButton.qml"
        }

        Loader {
            id: buttonLoader

            onLoaded: {
                item.text = "Dynamically Loaded"
            }
        }
    }
}
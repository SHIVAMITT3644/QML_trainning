import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: root

    property var keyModel: []
    signal actionTriggered(string action, string value)

    GridLayout {
        anchors.fill: parent
        columns: 4
        rowSpacing: 8
        columnSpacing: 8

        Repeater {
            model: root.keyModel

            delegate: KeyButton {
                Layout.columnSpan: modelData.columnSpan ? modelData.columnSpan : 1
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.preferredHeight: modelData.heightHint ? modelData.heightHint : 52

                text: modelData.label
                onClicked: {
                    root.actionTriggered(modelData.action, modelData.value ? modelData.value : "")
                }
            }
        }
    }
}

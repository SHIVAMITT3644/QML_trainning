import QtQuick

Rectangle {
    id: root

    property var modelData
    property var theme
    signal clicked(var data)

    width: ListView.view ? ListView.view.width : 200
    height: content.implicitHeight + 20
    radius: 10

    color: theme.getTheme().cardColor
    border.width: 1
       border.color: theme.currentTheme === 1 ? "#555" : "#d0d0d0"


    Column {
        id: content
        anchors.fill: parent
        anchors.margins: 10

        Text {
            text: modelData.title
            color: theme.getTheme().textColor
            font.bold: true
            elide: Text.ElideRight
            width: parent.width
        }

        Text {
            text: modelData.description
            color: theme.getTheme().textColor
            elide: Text.ElideRight
            width: parent.width
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked(root.modelData)
    }
}
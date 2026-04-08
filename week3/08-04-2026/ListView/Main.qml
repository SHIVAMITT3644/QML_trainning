import QtQuick

Window {
    width: 640
    height: 480
    minimumWidth: 400
    minimumHeight: 300
    visible: true
    title: qsTr("Hello World")

    ListView
    {
        anchors.fill: parent
        spacing: 11
        model: 8
        delegate: Rectangle
        {
            width: 200; height: 120
            color: "lightblue"
        }
    }
}

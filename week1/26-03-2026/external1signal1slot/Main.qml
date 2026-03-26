import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Notifier
    {
        id:notifier
        color: "black"
    }

    Receiver
    {
        id:receiver
        color:"yellow"
        anchors.right: parent.right

    }

    Component.onCompleted:
    {
        notifier.notifyIncrement.connect(receiver.incCounter)
    }
}

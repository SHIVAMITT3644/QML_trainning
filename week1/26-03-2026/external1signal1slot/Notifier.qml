import QtQuick

Item {
    width:rectId.width
    height:rectId.height
    property alias color : rectId.color
    signal notifyIncrement(string count)
    property int count : 0

    Rectangle
    {
        id: rectId
        height: 100
        width:  100
        color: "red"
        Text{
            anchors.centerIn: parent
            text : count
            font.pointSize: 40
            color:"white"
        }

        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                count++
                notifyIncrement(count)
            }
        }
    }

}

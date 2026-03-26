import QtQuick

Item {
    width:rectId.width
    height:rectId.height
    property alias color : rectId.color

    function incCounter(count)
    {
        textId1.text = count
    }

    Rectangle
    {
        id: rectId
        height: 100
        width:  100
        color: "red"
        Text{
            id:textId1
            anchors.centerIn: parent
            text : "0"
            font.pointSize: 40
            color:"white"
        }
    }

}

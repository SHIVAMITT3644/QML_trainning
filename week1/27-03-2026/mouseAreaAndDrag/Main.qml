import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")// This is available in all editors.

    Rectangle
    {
        id : rectId
        height: 400
        width:parent.width
        border.color: "pink"
        color:"black"

        Rectangle
        {
            id : smallRectId
            height: 100
            width:height
            color:"yellow"
        }

        MouseArea
        {
            anchors.fill : parent
            onClicked:
            {
                smallRectId.x = mouse.x
                smallRectId.y = mouse.y
            }

            onWheel:
            {
               console.log("X : " + wheel.x + "Y : " + wheel.y + "angleDelta : " + wheel.angleDelta)
            }
            hoverEnabled: true
            onHoveredChanged: {
                if(containsMouse === true)
                {
                    rectId.color = "yellow"
                    smallRectId.color = "black"
                }
                else
                {
                    rectId.color = "black"
                    smallRectId.color = "yellow"
                }
            }

            drag.target: smallRectId
            drag.axis: Drag.XYAxis
            drag.minimumX: 0
            drag.maximumX: rectId.width-smallRectId.width
            drag.minimumY: 0
            drag.maximumY: rectId.height - smallRectId.height


        }

    }
}

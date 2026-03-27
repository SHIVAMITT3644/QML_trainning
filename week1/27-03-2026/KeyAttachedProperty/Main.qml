import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        height:107
        width: 115
        color: "pink"
        focus:true
        Keys.onDigit1Pressed:function(event){
            console.log("key 1 pressed")
            // event.accepted = true
        }

        Keys.onPressed:function(event) {
            if(event.key === Qt.Key_1)
            {
                console.log("General:Key 1 is pressed")
            }
        }

    Keys.onDigit5Pressed: function(event) {
        if(event.modifiers === Qt.ControlModifier)
        {
            console.log("ctrl+5")
        }
        else
        {
            console.log("5")
        }
    }

    }
}

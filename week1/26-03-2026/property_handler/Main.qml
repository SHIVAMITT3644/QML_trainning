import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Property and Handler")

    property string mFirstName : "shivam"
    onMFirstNameChanged:
    {
        console.log("property changed " + mFirstName)
    }

    Rectangle
    {
        color: "lightblue"
        width: 50
        height:200
        radius:500
        anchors.centerIn: parent
        MouseArea
        {
            anchors.fill : parent
            onClicked:
            {
                mFirstName = "shivam pratap"
            }
        }
    }

    Component.onCompleted:
    {
        console.log("Rectangle is completed" + mFirstName)
    }
}

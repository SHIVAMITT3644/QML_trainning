import QtQuick 2.12
import QtQuick.Controls 2.5
import Singleton

ApplicationWindow {
    visible: true
    width: 400
    height: 300

    Rectangle {
        anchors.fill: parent
        color: AppSettings.darkMode ? "#202020" : "white"

        Text {
            anchors.centerIn: parent
            text: AppSettings.appName
            color: AppSettings.darkMode ? "white" : "black"
        }

        Switch
        {
            text:"change Theme"
            onCheckedChanged:
            {
                // if(checked ===true)
                // {
                //     AppSettings.darkMode = true
                // }
                // else
                // {
                //      AppSettings.darkMode = false
                // }
                AppSettings.toggleTheme()
            }
        }
    }
}
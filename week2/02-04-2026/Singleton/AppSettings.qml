pragma Singleton
import QtQuick 2.12

QtObject {
    property string appName: "My App"
    property color primaryColor: "#2d89ef"
    property bool darkMode: false

    function toggleTheme() {
        darkMode = !darkMode
    }
}
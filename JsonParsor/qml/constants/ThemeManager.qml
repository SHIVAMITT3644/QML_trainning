import QtQuick

QtObject {

    property int currentTheme: 0
    property color borderColor : "#888"
    property  color cyanBlue : "#e3f2fd"
    property color green : "#E8F5E9"
    property color yellowishOrange : "#FFF3E0"
    property color reddishGrey : "#5e5e5e"
    property color darkGreen : "#4caf50"
    property color lightBlue : "#1976d2"
    property color red : "red"
    property color white : "#ffffff"
    property color black : "#000000"
    property color hotFuchsia : "#FF004F"
    property color bitterChocolate : "#733635"
    property color tropicalMint : "#00FFBF"

    property var themes: [
        {
            name: "Light",
            backgroundColor: "#f5f5f5",
            cardColor: "#ffffff",
            textColor: "#000000"
        },
        {
            name: "Dark",
            backgroundColor: "#1e1e1e",
            cardColor: "#2c2c2c",
            textColor: "#ffffff"
        },
        {
            name: "Blue",
            backgroundColor: "#e3f2fd",
            cardColor: "#bbdefb",
            textColor: "#0d47a1"
        }
    ]

    function getTheme() {
        return themes[currentTheme]
    }

    function nextTheme() {
        currentTheme = (currentTheme + 1) % themes.length
    }

    function themeName() {
        return themes[currentTheme].name
    }
}
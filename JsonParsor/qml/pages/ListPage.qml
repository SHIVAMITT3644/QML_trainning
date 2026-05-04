import QtQuick
import QtQuick.Controls
import "../components"
import "../services"
import "../constants"

Item {
    id: root

    property ListModel listModel: ListModel {}
    property var theme

    ThemeManager { id: themeObj }
    AppConstants { id: constants }

    ApiService {
        id: api
        Component.onCompleted: setConstants(constants)
    }

    function loadData() {
        api.getItems(function(data) {
            listModel.clear()

            for (var i = 0; i < data.length; i++) {
                listModel.append(data[i])
            }
        })
    }

    Component.onCompleted: Qt.callLater(loadData)

    Rectangle {
        anchors.fill: parent
        color: themeObj.getTheme().backgroundColor

        Column {
            anchors.fill: parent

            Header {
                width: parent.width
                theme: themeObj
            }

            ListView {
                width: parent.width
                height: parent.height - 100


                model: listModel
                spacing: 10
                clip: true

                delegate: CardItem {
                    modelData: model
                    theme: themeObj
                    width: parent.width - 32
                    anchors.horizontalCenter: parent.horizontalCenter

                    onClicked: function(data) {
                        cityDialog.cityData = data
                        cityDialog.open()
                    }
                }
            }

            Footer {
                width: parent.width
                theme: themeObj
                onRefreshClicked: loadData()
                onAddClicked: addDialog.open()
            }
        }
    }

    CityDialog {
        id: cityDialog
        theme: themeObj

        onDeleteClicked: function(id) {
            api.deleteItem(id, loadData)
        }
    }

    AddDialog {
        id: addDialog
        theme: themeObj

        onSubmit: function(data) {
            api.addItem(data, loadData)
        }
    }
}
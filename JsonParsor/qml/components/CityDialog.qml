import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Dialog {
    id: dialog
    modal: true

    width: parent ? parent.width * 0.6 : 400
    anchors.centerIn: parent
    padding:16
    property var cityData
    property var theme
    property var constant
    signal deleteClicked(int id)

    background: Rectangle {
        radius: 12
        color: theme.getTheme().cardColor
        border.color: theme.borderColor
    }

    Component {
        id: statCard

        Rectangle {
            required property var modelData

            Layout.fillWidth: true
            Layout.preferredHeight: 60
            radius: 10

            color: modelData.bgColor

            Column {
                anchors.centerIn: parent

                Text {
                    text: modelData.title
                    color: theme.getTheme().textColor
                }

                Text {
                    text: modelData.value
                    font.bold: true
                    color: theme.getTheme().textColor
                }
            }
        }
    }

    contentItem: ColumnLayout {
        id: contentCol
        spacing: 11
        width: parent.width

        RowLayout {
            Layout.fillWidth: true

            Text {
                text: cityData?.title ?? ""
                font.pixelSize: 22
                font.bold: true
                color: theme.getTheme().textColor

                Layout.fillWidth: true
                elide: Text.ElideRight
                maximumLineCount: 1
            }

            Image {
                source:
                    theme.currentTheme === 1
                                ? constant.whiteCancleIcon
                                : constant.blackCancleIcon
                Layout.preferredWidth: 16
                Layout.preferredHeight: 16
                MouseArea
                {
                    anchors.fill: parent
                    onClicked:
                    {
                       dialog.close()
                    }
                }
            }
        }

        Text {
            text: cityData?.details ?? ""
            wrapMode: Text.WordWrap
            color: theme.getTheme().textColor
            Layout.fillWidth: true
        }

        Text {
            text: cityData?.description ?? ""
            wrapMode: Text.WordWrap
            color: theme.getTheme().textColor
            Layout.fillWidth: true
            font.family: constant.timeNewRomanText
            font.italic: true
        }

        GridLayout {
            columns: 2
            columnSpacing: 10
            rowSpacing: 10
            Layout.fillWidth: true

            Repeater {
                model: [
                    {
                        title: constant.populationText,
                        value: cityData?.population ?? "N/A",
                        bgColor: theme.currentTheme === 0 ? theme.cyanBlue :
                                 theme.currentTheme === 1 ? theme.reddishGrey :
                                 theme.green
                    },
                    {
                        title: constant.literacyText,
                        value: cityData?.literacyRate ?? "N/A",
                        bgColor: theme.currentTheme === 0 ? theme.yellowishOrange :
                                 theme.currentTheme === 1 ? theme.reddishGrey :
                                                            theme.green                    }
                ]

                delegate: statCard
            }
        }

        Item { height: 10 }

        AppButton {
            btnText: constant.deleteText
            bgColor: theme.red

            Layout.fillWidth: true
            Layout.preferredHeight: 42

            onClicked: {
                deleteClicked(cityData.id)
                dialog.close()
            }
        }

        Item { height: 10 }
    }
}

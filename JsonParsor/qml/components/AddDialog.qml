import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Dialog {
    id: dialog
    modal: true
    anchors.centerIn: parent

    width: parent ? parent.width * 0.7 : 420

    property var theme

    property alias titleText: titleField.text
    property alias descText: descField.text
    property alias detailText: detailField.text
    property alias populationText: populationField.text
    property alias literacyText: literacyField.text

    signal submit(var data)

    background: Rectangle {
        radius: 12

        color: theme ? theme.getTheme().cardColor : theme.white
        border.color: theme ? (theme.currentTheme === 1 ? theme.hotFuchsia : theme.bitterChocolate) : theme.tropicalMint
    }

    padding: 24

    contentItem: ColumnLayout {
        spacing: 18
        width: parent.width

        Text {
            id: errorText
            color: theme.reddishGrey
            visible: false
            text: "All fields are required"
        }

        RowLayout {
            Layout.fillWidth: true

            Text {
                text: "Title"
                Layout.preferredWidth: 120
                color: theme ? theme.getTheme().textColor : "#000"
            }

            TextField {
                id: titleField
                Layout.fillWidth: true
                color: theme ? theme.getTheme().textColor : "#000"
                background: Rectangle {
                    radius: 6
                    color: theme ? theme.getTheme().backgroundColor : "#eee"
                }
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Text {
                text: "Description"
                Layout.preferredWidth: 120
                color: theme ? theme.getTheme().textColor : "#000"
            }

            TextField {
                id: descField
                Layout.fillWidth: true
                color: theme ? theme.getTheme().textColor : "#000"
                background: Rectangle {
                    radius: 6
                    color: theme ? theme.getTheme().backgroundColor : "#eee"
                }
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Text {
                text: "Details"
                Layout.preferredWidth: 120
                color: theme ? theme.getTheme().textColor : "#000"
            }

            TextField {
                id: detailField
                Layout.fillWidth: true
                color: theme ? theme.getTheme().textColor : "#000"
                background: Rectangle {
                    radius: 6
                    color: theme ? theme.getTheme().backgroundColor : "#eee"
                }
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Text {
                text: "Population"
                Layout.preferredWidth: 120
                color: theme ? theme.getTheme().textColor : "#000"
            }

            TextField {
                id: populationField
                Layout.fillWidth: true
                inputMethodHints: Qt.ImhDigitsOnly

                background: Rectangle {
                    radius: 6
                    color: theme ? theme.getTheme().backgroundColor : "#eee"
                }
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Text {
                text: "Literacy (%)"
                Layout.preferredWidth: 120
                color: theme ? theme.getTheme().textColor : "#000"
            }

            TextField {
                id: literacyField
                Layout.fillWidth: true
                inputMethodHints: Qt.ImhDigitsOnly

                background: Rectangle {
                    radius: 6
                    color: theme ? theme.getTheme().backgroundColor : "#eee"
                }
            }
        }

        RowLayout {
            Layout.fillWidth: true
            spacing: 12

            AppButton {
                btnText: "Cancel"
                bgColor: theme.red

                Layout.fillWidth: true
                Layout.preferredHeight: 40

                onClicked: dialog.close()
            }

            AppButton {
                btnText: "Add"
                bgColor: theme.darkGreen

                Layout.fillWidth: true
                Layout.preferredHeight: 40

                onClicked: {
                    if (
                        titleText === "" ||
                        descText === "" ||
                        detailText === "" ||
                        populationText === "" ||
                        literacyText === ""
                    ) {
                        errorText.visible = true
                        return
                    }

                    errorText.visible = false

                    submit({
                        title: titleText,
                        description: descText,
                        details: detailText,
                        population: parseInt(populationText),
                        literacyRate: parseInt(literacyText)
                    })

                    dialog.close()
                }
            }
        }
    }
}
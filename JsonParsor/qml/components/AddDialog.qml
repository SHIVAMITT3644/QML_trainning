import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Dialog {
    id: addCityDialog
    modal: true
    anchors.centerIn: parent

    width: parent ? parent.width * 0.7 : 420

    property var theme
    property var  constant
    signal submit(var data)

    background: Rectangle {
        radius: 12
        color: theme.getTheme().cardColor
        border.color: (theme.currentTheme === 1 ? theme.hotFuchsia : theme.bitterChocolate)
    }

    padding: 24

    Component {
        id: formRowComponent

        RowLayout {
            property string labelText: ""
            property alias inputText: inputField.text
            property bool numericOnly: false

            Layout.fillWidth: true
            Layout.preferredHeight: 45

            Text {
                text: labelText
                Layout.preferredWidth: 120
                color: theme.getTheme().textColor
            }

            TextField {
                id: inputField
                Layout.fillWidth: true
                inputMethodHints: numericOnly ? Qt.ImhDigitsOnly : Qt.ImhNone
                color: theme.getTheme().textColor

                background: Rectangle {
                    radius: 6
                    color: theme.getTheme().backgroundColor
                }
            }
        }
    }

    contentItem: ColumnLayout {
        spacing: 18
        width: parent.width

        Text {
            id: errorText
            text: constant.fieldEmptyText
            visible: false
            color: theme.reddishGrey
        }

        Loader {
            id: titleRow
            sourceComponent: formRowComponent
            Layout.fillWidth: true
            onLoaded: item.labelText = constant.titleText
        }

        Loader {
            id: descriptionRow
            sourceComponent: formRowComponent
            Layout.fillWidth: true
            onLoaded: item.labelText = constant.descriptionText
        }

        Loader {
            id: detailsRow
            sourceComponent: formRowComponent
            Layout.fillWidth: true
            onLoaded: item.labelText = constant.detailText
        }

        Loader {
            id: populationRow
            sourceComponent: formRowComponent
            Layout.fillWidth: true
            onLoaded: {
                item.labelText = constant.populationText
                item.numericOnly = true
            }
        }

        Loader {
            id: literacyRow
            sourceComponent: formRowComponent
            Layout.fillWidth: true
            onLoaded: {
                item.labelText = constant.literacyText
                item.numericOnly = true
            }
        }

        RowLayout {
            Layout.fillWidth: true
            spacing: 12

            AppButton {
                btnText: constant.cancelText
                bgColor: theme.red
                Layout.fillWidth: true
                Layout.preferredHeight: 40
                onClicked: addCityDialog.close()
            }

            AppButton {
                btnText: constant.addText
                bgColor: theme.darkGreen
                Layout.fillWidth: true
                Layout.preferredHeight: 40

                onClicked: {
                    if (
                        !titleRow.item || !descriptionRow.item || !detailsRow.item ||
                        !populationRow.item || !literacyRow.item ||
                        titleRow.item.inputText === "" ||
                        descriptionRow.item.inputText === "" ||
                        detailsRow.item.inputText === "" ||
                        populationRow.item.inputText === "" ||
                        literacyRow.item.inputText === ""
                    ) {
                        errorText.visible = true
                        return
                    }

                    errorText.visible = false

                    submit({
                        title: titleRow.item.inputText,
                        description: descriptionRow.item.inputText,
                        details: detailsRow.item.inputText,
                        population: parseInt(populationRow.item.inputText),
                        literacyRate: parseInt(literacyRow.item.inputText)
                    })

                    addCityDialog.close()
                }
            }
        }
    }

    onClosed: {
        errorText.visible = false

        if (titleRow.item) titleRow.item.inputText = ""
        if (descriptionRow.item) descriptionRow.item.inputText = ""
        if (detailsRow.item) detailsRow.item.inputText = ""
        if (populationRow.item) populationRow.item.inputText = ""
        if (literacyRow.item) literacyRow.item.inputText = ""
    }
}

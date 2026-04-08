import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ListModel {
        id: complexModel

        ListElement {
            idValue: 1
            name: "Item 1"
            category: "Music"
            rating: 4.5
            isFavorite: true
            tagsText: "pop, 2020"
            duration: 210
            artist: "Artist 1"
            creator: ""
            author: ""
            pages: 0
        }

        ListElement {
            idValue: 2
            name: "Item 2"
            category: "Video"
            rating: 3.8
            isFavorite: false
            tagsText: "tutorial, qml"
            duration: 540
            artist: ""
            creator: "Creator 2"
            author: ""
            pages: 0
        }

        ListElement {
            idValue: 3
            name: "Item 3"
            category: "Book"
            rating: 4.9
            isFavorite: true
            tagsText: "fiction, bestseller"
            duration: 0
            artist: ""
            creator: ""
            author: "Author 3"
            pages: 320
        }

        ListElement {
            idValue: 4
            name: "Item 4"
            category: "Music"
            rating: 4.1
            isFavorite: false
            tagsText: "rock"
            duration: 180
            artist: "Artist 4"
            creator: ""
            author: ""
            pages: 0
        }

        ListElement {
            idValue: 5
            name: "Item 5"
            category: "Video"
            rating: 3.5
            isFavorite: false
            tagsText: "education"
            duration: 600
            artist: ""
            creator: "Creator 5"
            author: ""
            pages: 0
        }

        ListElement {
            idValue: 6
            name: "Item 6"
            category: "Book"
            rating: 4.7
            isFavorite: true
            tagsText: "history"
            duration: 0
            artist: ""
            creator: ""
            author: "Author 6"
            pages: 250
        }

        ListElement {
            idValue: 7
            name: "Item 7"
            category: "Music"
            rating: 3.9
            isFavorite: false
            tagsText: "jazz"
            duration: 200
            artist: "Artist 7"
            creator: ""
            author: ""
            pages: 0
        }

        ListElement {
            idValue: 8
            name: "Item 8"
            category: "Video"
            rating: 4.2
            isFavorite: true
            tagsText: "tech"
            duration: 720
            artist: ""
            creator: "Creator 8"
            author: ""
            pages: 0
        }

        ListElement {
            idValue: 9
            name: "Item 9"
            category: "Book"
            rating: 4.0
            isFavorite: false
            tagsText: "science"
            duration: 0
            artist: ""
            creator: ""
            author: "Author 9"
            pages: 280
        }

        ListElement {
            idValue: 10
            name: "Item 10"
            category: "Music"
            rating: 4.8
            isFavorite: true
            tagsText: "classical"
            duration: 300
            artist: "Artist 10"
            creator: ""
            author: ""
            pages: 0
        }

        ListElement {
            idValue: 11
            name: "Item 11"
            category: "Music"
            rating: 3.6
            isFavorite: false
            tagsText: "indie"
            duration: 220
            artist: "Artist 11"
            creator: ""
            author: ""
            pages: 0
        }

        ListElement {
            idValue: 12
            name: "Item 12"
            category: "Video"
            rating: 4.3
            isFavorite: true
            tagsText: "coding"
            duration: 800
            artist: ""
            creator: "Creator 12"
            author: ""
            pages: 0
        }

        ListElement {
            idValue: 13
            name: "Item 13"
            category: "Book"
            rating: 4.6
            isFavorite: true
            tagsText: "novel"
            duration: 0
            artist: ""
            creator: ""
            author: "Author 13"
            pages: 350
        }

        ListElement {
            idValue: 14
            name: "Item 14"
            category: "Music"
            rating: 3.7
            isFavorite: false
            tagsText: "hiphop"
            duration: 210
            artist: "Artist 14"
            creator: ""
            author: ""
            pages: 0
        }

        ListElement {
            idValue: 15
            name: "Item 15"
            category: "Video"
            rating: 4.1
            isFavorite: false
            tagsText: "review"
            duration: 400
            artist: ""
            creator: "Creator 15"
            author: ""
            pages: 0
        }

        ListElement {
            idValue: 16
            name: "Item 16"
            category: "Book"
            rating: 4.9
            isFavorite: true
            tagsText: "fantasy"
            duration: 0
            artist: ""
            creator: ""
            author: "Author 16"
            pages: 500
        }

        ListElement {
            idValue: 17
            name: "Item 17"
            category: "Music"
            rating: 4.0
            isFavorite: false
            tagsText: "electronic"
            duration: 260
            artist: "Artist 17"
            creator: ""
            author: ""
            pages: 0
        }

        ListElement {
            idValue: 18
            name: "Item 18"
            category: "Video"
            rating: 3.9
            isFavorite: false
            tagsText: "vlog"
            duration: 300
            artist: ""
            creator: "Creator 18"
            author: ""
            pages: 0
        }

        ListElement {
            idValue: 19
            name: "Item 19"
            category: "Book"
            rating: 4.2
            isFavorite: true
            tagsText: "biography"
            duration: 0
            artist: ""
            creator: ""
            author: "Author 19"
            pages: 270
        }

        ListElement {
            idValue: 20
            name: "Item 20"
            category: "Music"
            rating: 4.4
            isFavorite: true
            tagsText: "pop"
            duration: 230
            artist: "Artist 20"
            creator: ""
            author: ""
            pages: 0
        }

        ListElement {
            idValue: 21
            name: "Item 21"
            category: "Video"
            rating: 4.0
            isFavorite: false
            tagsText: "documentary"
            duration: 900
            artist: ""
            creator: "Creator 21"
            author: ""
            pages: 0
        }

        ListElement {
            idValue: 22
            name: "Item 22"
            category: "Book"
            rating: 3.8
            isFavorite: false
            tagsText: "self-help"
            duration: 0
            artist: ""
            creator: ""
            author: "Author 22"
            pages: 200
        }

        ListElement {
            idValue: 23
            name: "Item 23"
            category: "Music"
            rating: 4.7
            isFavorite: true
            tagsText: "rock"
            duration: 240
            artist: "Artist 23"
            creator: ""
            author: ""
            pages: 0
        }

        ListElement {
            idValue: 24
            name: "Item 24"
            category: "Video"
            rating: 4.2
            isFavorite: true
            tagsText: "qml"
            duration: 650
            artist: ""
            creator: "Creator 24"
            author: ""
            pages: 0
        }

        ListElement {
            idValue: 25
            name: "Item 25"
            category: "Book"
            rating: 4.5
            isFavorite: true
            tagsText: "drama"
            duration: 0
            artist: ""
            creator: ""
            author: "Author 25"
            pages: 310
        }
    }

    ListView
    {
        id:list
        model: complexModel
        anchors.fill: parent
        anchors.leftMargin: 16
        anchors.rightMargin: 16
        anchors.topMargin: 20
        anchors.bottomMargin: 20
        spacing:11
        delegate: rec
    }

    Component {
        id: rec

        Rectangle {
            height: 150
            width: ListView.view.width
            color: "#fcfcfc"
            border.color: "#c7c8c9"
            border.width: 1
            radius: 11

            Column {
                anchors.fill: parent
                anchors.margins: 15
                spacing: 4

                Text {
                    text: name
                    font.bold: true
                    font.pixelSize: 16
                }

                Text {
                    text: "Category: " + category
                }

                Text {
                    text: "Rating: " + rating
                }

                Text {
                    text: "Favorite: " + (isFavorite ? "Yes" : "No")
                }

                Text {
                    text: "Tags: " + tagsText
                }

                Text {
                    text: category === "Music"
                          ? "Artist: " + artist + " | Duration: " + duration
                          : category === "Video"
                            ? "Creator: " + creator + " | Duration: " + duration
                            : "Author: " + author + " | Pages: " + pages
                }
            }
        }
    }
}

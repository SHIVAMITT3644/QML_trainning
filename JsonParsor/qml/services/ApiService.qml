import QtQuick

QtObject {

    property string baseUrl: ""

    function setConstants(c) {
        baseUrl = c.baseUrl
    }

    function getItems(callback) {
        var xhr = new XMLHttpRequest()
        xhr.open("GET", baseUrl)

        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200)
                    callback(JSON.parse(xhr.responseText))
                else
                    callback([])
            }
        }
        xhr.send()
    }

    function addItem(data, callback) {
        var xhr = new XMLHttpRequest()
        xhr.open("POST", baseUrl)
        xhr.setRequestHeader("Content-Type", "application/json")

        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE)
                callback()
        }
        xhr.send(JSON.stringify(data))
    }

    function deleteItem(id, callback) {
        var xhr = new XMLHttpRequest()
        xhr.open("DELETE", baseUrl + "/" + id)

        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE)
                callback()
        }
        xhr.send()
    }
}
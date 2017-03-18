import QtQuick 2.6
import QtQuick.Window 2.2

Item {
    width: 400
    height: 70
    clip: true
    antialiasing: true

    property alias text: label.text

    Rectangle {
        id: main
        width: parent.width * 0.8
        height: parent.height
        color: "#ff4035"
    }

    Rectangle {
        width: main.height * 1.7
        height: width
        color: main.color
        rotation: -70
        anchors {
            verticalCenter: parent.top
            horizontalCenter: main.right
            horizontalCenterOffset: -27
        }

        Text {
            id: label
            width: 0
            text: ""
            color: "#eee"
            anchors {
                left: parent.left
                bottom: parent.bottom
                leftMargin: 8
                bottomMargin: 4
            }
            font {
                bold: true
                capitalization: Font.AllUppercase
                pixelSize: 20
                family: "Roboto Condensed"
            }
        }

        Rectangle {
            color: "#faa"
            width: parent.width
            height: 2
            anchors.top: parent.bottom
            anchors.left: parent.left
        }
    }
}

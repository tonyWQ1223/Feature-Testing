import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    id: page
    width: 600
    height: 400

    Label {
        text: qsTr("This is page 1")
        anchors.verticalCenterOffset: -139
        anchors.horizontalCenterOffset: 0
        font.family: "consolas"
        font.bold: false
        font.pointSize: 16
        color: "#00ff00"
        anchors.centerIn: parent
        z: 1
    }

    Rectangle {
        id: bg
        anchors.fill: parent
        color: "white"

        Rectangle {
            id: imgBg
            anchors.centerIn: parent
            height: parent.height / 2
            color: "#000000" //#ffffff
            width: parent.width / 2

            Image {
                id: airplane_1
                anchors.fill: parent
                source: "images/airplane_1.jpg"
                fillMode: Image.PreserveAspectFit
            }
        }

        Label {
            id: label
            x: 265
            y: 317
            color: "#ddffffff"
            text: qsTr("airplane 1")
            font.italic: true
            font.bold: true
            font.family: "Times New Roman"
            font.pointSize: 12
        }

        Rectangle {
            id: topBar
            x: 0
            y: 0
            width: 107
            height: 47
            color: "#e5e5e5"

            CheckBox {
                id: checkBox
                x: 2
                y: 0
                text: qsTr("Check Box")
                z: 2
            }
            z: 2
        }
    }
}

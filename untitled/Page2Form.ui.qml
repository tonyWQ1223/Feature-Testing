import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    width: 600
    height: 400

    Label {
        text: "This is page 2"
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
        color: "#000000" //#ffffff
        anchors.fill: parent

        Rectangle {
            id: imgBg
            anchors.centerIn: parent
            height: parent.height / 2
            width: parent.width / 2

            Image {
                id: airplane_1
                anchors.fill: parent
                source: "images/airplane_2.jpg"
                fillMode: Image.PreserveAspectFit
            }
        }

        Label {
            id: label
            x: 265
            y: 333
            color: "#ddffffff"
            text: qsTr("airplane 2")
            font.italic: true
            font.bold: true
            font.family: "Times New Roman"
            font.pointSize: 12
        }
    }
}

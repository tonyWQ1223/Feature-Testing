import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
    height: 720
    width: 240
    Rectangle{        
        anchors.fill: parent
        color: "#ffffff"


        Rectangle{
            id: navigation_bar
            width: parent.width
            height: 50
            anchors.top: parent.top

            Row {
//                anchors.fill: parent
                anchors.centerIn: parent
                spacing: 10
                Button {
                    id: project
                    width: 70
                    text: qsTr("Project")
                    font.pointSize: 10
                    background: Rectangle{
                        color: "silver"
                        radius: 5
                        border.color: "#8b8989"
                    }
                    onClicked:{
                        proj.visible = true
                        hst.visible = false
                        msg.visible = false
                    }
                }

                Button {
                    id: history
                    width: 70
                    text: qsTr("History")
                    font.pointSize: 10
                    background: Rectangle{
                        color: "silver"
                        radius: 5
                        border.color: "#8b8989"
                    }
                    onClicked:{
                        proj.visible = false
                        hst.visible = true
                        msg.visible = false
                    }
                }

                Button {
                    id: messages
                    width: 70
                    text: qsTr("Message")
                    font.pointSize: 10
                    background: Rectangle{
                        color: "silver"
                        radius: 5
                        border.color: "#8b8989"
                    }
                    onClicked:{
                        proj.visible = false
                        hst.visible = false
                        msg.visible = true
                    }
                }
            }
        }

        Rectangle{
            id: for_show_only
            height: parent.height - 50
            width: parent.width
            anchors.top: navigation_bar.bottom
            color: "#ffffff"

            Image {
                id: proj
                x: 43
                y: 68
                width: 100
                height: 100
                source: "/materials/projects page.png"
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
                visible: true
            }

            Image {
                id: hst
                x: 43
                y: 68
                width: 100
                height: 100
                source: "/materials/history log page.png"
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
                visible: false
            }

            Image {
                id: msg
                x: 43
                y: 68
                width: 100
                height: 100
                source: "/materials/messages log page.png"
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
                visible: false
            }
        }

//        Label {
//            id: label
//            x: 8
//            y: 56
//            text: qsTr("Message Log")
//            font.pointSize: 13
//        }

//        Label {
//            id: label1
//            x: 8
//            y: 80
//            text: qsTr("_____________________________________________")
//            font.bold: true
//        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.66}D{i:4}D{i:6}D{i:8}D{i:3}D{i:2}D{i:10}D{i:11}D{i:1}
}
##^##*/

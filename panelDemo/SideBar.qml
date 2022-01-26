import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
Item{
    anchors.fill: parent
    property bool isCollapsed: false
    signal rescale
    Rectangle{
        width: parent.width/4 //parent.width/4
        height: parent.height
        id: sidebar
        color: "#c0c0c0"//"silver"
        x: 0
        y: 0

        ListModel{
            id: featuresList
            ListElement{name: "Scenario"; page: "Subpanel1.qml"}
            ListElement{name: "Initial Conditions"; page: "Subpanel2.qml"}
            ListElement{name: "Asymmetric Aircraft"; page: ""}
            ListElement{name: "Scenario Parameters"; page: ""}
            ListElement{name: "Landing Gear"; page: ""}
            ListElement{name: "Maneuver Details"; page: ""}
            ListElement{name: "Runway Details"; page: ""}
            ListElement{name: "FCS Commands"; page: ""}
            ListElement{name: "Simulate"; page: ""}
            ListElement{name: "3LG Configuration"; page: ""}
            ListElement{name: "Post - Process"; page: ""}
        }

        GridView{
            id: featuresGrid
            width:parent.width
            height: parent.height
            x: parent.x + 10
            y: parent.y + 10
            cellHeight: 140
            cellWidth: 160
            model: featuresList
            delegate: Rectangle {
                width: 140
                height: 80
                color: "#d3d3d3"//"lightgray"
                radius: 5
                Text{
                    color: "#000000"//"black"
                    text: name
                    anchors.centerIn: parent
                }

                property bool flag: false;
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(!flag){
                            mainLoader.source = page
                            parent.color = "#808080"//"gray"
                            flag = true
                        }

                        else if(flag){
                            parent.color = "#d3d3d3"//"lightgray"
                            flag = false
                        }
                    }
                }
            }
        }

        PropertyAnimation{
            id: collapse    // <<<<<
            target: sidebar
            property: "x"
            to: -parent.width/4
            duration: 100
        }

        PropertyAnimation{
            id: expand      // >>>>>
            target: sidebar
            property: "x"
            to: 0
            duration: 100
        }
    }

    Button{
        id: actionButton
        anchors.verticalCenter: parent.verticalCenter
        width: 20
        height:40
        x: sidebar.x + 310
    }

    Connections{
        target: actionButton
        function onClicked(){
            if (sidebar.x === 0){
                sidebar.rescale
                isCollapsed = true
                collapse.start()
            }
            else{
                sidebar.rescale
                isCollapsed = false
                expand.start()
            }
        }
    }
}






/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2}D{i:14}D{i:18}D{i:19}D{i:1}D{i:20}
D{i:21}
}
##^##*/

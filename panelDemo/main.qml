import QtQuick
import QtQuick.Window
import QtQuick.Controls 2.15
Window {
    height: 720
    maximumHeight: 720
    minimumHeight: 720
    width: 1280
    maximumWidth: 1280
    minimumWidth: 1280
    visible: true
    title: qsTr("Gearsim")


    SideBar{
        id: sideBar
        onRescale:{
            mainPanel.width = 1280
            mainPanel.x = 0
        }
    }


    Panel{
        id: mainPanel
        width: 1280-340
        height: 700
        x: 330
        anchors.verticalCenter: parent.verticalCenter

    }


    Loader{
        id: mainLoader
        width: 1280-340
        height: 700
        x: 330
        anchors.verticalCenter: parent.verticalCenter
        source: "StackViewPage.qml"
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:1}
}
##^##*/

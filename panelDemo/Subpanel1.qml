import QtQuick 2.0
import QtQuick.Controls 2.0

Item {
    width: 1280-340
    height: 700
    //    anchors.fill: parent
    Rectangle{
        width: parent.width
        height: parent.height
        Button{
            id: homeButtom
            height: 50
            width: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            onClicked: mainLoader.source = "StackViewPage.qml"
            Text{text: "Home"; anchors.centerIn: parent}
        }
        Image{
            anchors.fill: parent
            source:"materials/commercial-plane-high-poly-3d-model-obj-fbx-blend-dae-mtl"
            fillMode: Image.PreserveAspectFit
        }
    }


}

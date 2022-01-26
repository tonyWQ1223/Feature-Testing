import QtQuick 2.0
import QtQuick.Controls

Item {


    Rectangle{
        anchors.fill: parent
        color:"lightgray" //"gray"
    }

    Loader{
        id: mainLoader
        anchors.fill: parent
        //source: "StackViewPage.qml"
    }

    Button{
        id: nextButton
        width: 85
        height: 35
        anchors{
            right: parent.right
            bottom: parent.bottom
            margins: 20
        }
        text: "Next"
    }

    Button{
        id: prevButton
        width: 85
        height: 35
        anchors{
            right: nextButton.left
            rightMargin: 10
            verticalCenter: nextButton.verticalCenter
        }
        text: "Back"
        onClicked: stackview.pop();
    }
}

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button {
    id: buttonLeftMenu

    implicitWidth: 250
    implicitHeight: 48

    property color btnColorDefault: "#ffffff"
    property color btnColorSelected: "#6200ee"
    property bool isActiveMenu: false

    Keys.onReturnPressed: buttonLeftMenu.clicked()

    QtObject {
        id: internal

        property var dynamicColor: if(buttonLeftMenu.down){
                                        buttonLeftMenu.down ? btnColorSelected : isSelected
                                    } else {
                                        buttonLeftMenu.hovered ? "#000000" : isSelected
                                    }

        property var isSelected: isActiveMenu ? btnColorSelected : btnColorDefault

        property var changeButtonColor: isActiveMenu ? btnColorSelected : "#000000"
    }

    background: Rectangle {
        id: backgroundButton
        color: internal.dynamicColor
        opacity: 0.05
    }

    contentItem: Item {
        id: content
        anchors.fill: parent

        Text {
            id: buttonText
            visible: true 
            color: "#000000"
            font.pixelSize: 16
            font.family: applicationWindow.font.family
            text: buttonLeftMenu.text
            anchors.leftMargin: 42
            anchors.topMargin: 12
            anchors.bottomMargin: 12
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        ColorOverlay {
            anchors.fill: buttonText
            source: buttonText
            visible: true 
            color: internal.changeButtonColor
        }
    }
}
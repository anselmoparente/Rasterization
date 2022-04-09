import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.3
import "../screens"

Rectangle {
    id: leftMenu

    property int iconSize: 16

    clip: true
    width: 304
    color: "#ffffff"
    anchors.left: parent.left
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    anchors.leftMargin: 0
    anchors.bottomMargin: 0
    anchors.topMargin: 0

    Keys.onReturnPressed: buttonCreateFile.forceActiveFocus()

    QtObject {
        id: internal

        property var changeSizeLeftMenu:{
            iconSize = 20
            leftMenu.width = 250
        }
    }

    Column {
        id: columnMenu

        LeftMenuButton {
            id: buttonCreateFile
            width: leftMenu.width
            text: qsTr("Rasterizar retas")
            isActiveMenu: focus

            onClicked: {}
        }

        LeftMenuButton {
            id: buttonImportFile
            width: leftMenu.width 
            text: qsTr("Rasterizar polígonos")
            isActiveMenu: focus

            onClicked: {}
        }
    }                               
}

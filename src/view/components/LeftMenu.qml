import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.3
import "../screens"

Rectangle {
    id: leftMenu

    property int iconSize: 16
    property string btnPressed: ""

    clip: true
    width: 304
    color: "#ffffff"
    anchors.left: parent.left
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    anchors.leftMargin: 0
    anchors.bottomMargin: 0
    anchors.topMargin: 0

    Keys.onReturnPressed: buttonRasterizationLine.forceActiveFocus()

    QtObject {
        id: internal

        property var changeSizeLeftMenu:{
            iconSize = 20
            leftMenu.width = 250
        }

        function continueFunction(){
            if(btnPressed == "buttonRasterizationLines") {
                routes.pop()
                routes.push(Qt.resolvedUrl("../screens/RasterizationLines.qml"))
                print('deu bom')
            } else if(btnPressed == "buttonOpenFile"){
                fileOpenFile.open()
            }
        }

    }

    Column {
        id: columnMenu

        LeftMenuButton {
            id: buttonRasterizationLines
            width: leftMenu.width
            text: qsTr("Rasterizar retas")
            isActiveMenu: focus

            onClicked: {
                btnPressed = "buttonRasterizationLines"
                internal.continueFunction()
            }
        }

        LeftMenuButton {
            id: buttonRasterizationPolygons
            width: leftMenu.width 
            text: qsTr("Rasterizar polígonos")
            isActiveMenu: focus

            onClicked: {}
        }
    }                               
}

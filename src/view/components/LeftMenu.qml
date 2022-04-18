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
            } else if(btnPressed == "buttonRasterizationPolygons"){
                routes.pop()
                routes.push(Qt.resolvedUrl("../screens/RasterizationPolygons.qml"))
            } else if(btnPressed == "buttonHomePage"){
                routes.pop()
                routes.push(Qt.resolvedUrl("../screens/HomePage.qml"))
            } else if(btnPressed == "buttonMultiplesPolygons"){
                routes.pop()
                routes.push(Qt.resolvedUrl("../screens/MultiplePolygonPage.qml"))
            } else if(btnPressed == "buttonMoreInformations"){
                routes.pop()
                routes.push(Qt.resolvedUrl("../screens/RasterV2Page.qml"))
            }
        }

    }

    Column {
        id: columnMenu
        
        LeftMenuButton {
            id: buttonHomePage
            width: leftMenu.width
            text: qsTr("Tela Inicial")
            isActiveMenu: focus

            onClicked: {
                btnPressed = "buttonHomePage"
                internal.continueFunction()
            }
        }

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

            onClicked: {
                btnPressed = "buttonRasterizationPolygons"
                internal.continueFunction()
            }
        }

        LeftMenuButton {
            id: buttonMultiplesPolygons
            width: leftMenu.width 
            text: qsTr("Múltiplos polígonos")
            isActiveMenu: focus

            onClicked: {
                btnPressed = "buttonMultiplesPolygons"
                internal.continueFunction()
            }
        }

        LeftMenuButton {
            id: buttonMoreInformations
            width: leftMenu.width 
            text: qsTr("Conteúdo adicional")
            isActiveMenu: focus

            onClicked: {
                btnPressed = "buttonMoreInformations"
                internal.continueFunction()
            }
        }
    }                               
}

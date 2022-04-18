import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: homePage
    property var imagesSources: [
        ["../../assets/resizingPolygons/triangleResized20x20.png", "../../assets/resizingPolygons/triangleResized60x60.png", "../../assets/resizingPolygons/triangleResized120x120.png"],
        ["../../assets/resizingPolygons/squareResized20x20.png", "../../assets/resizingPolygons/squareResized60x60.png", "../../assets/resizingPolygons/squareResized120x120.png"],
        ["../../assets/resizingPolygons/hexagonResized20x20.png", "../../assets/resizingPolygons/hexagonResized60x60.png", "../../assets/resizingPolygons/hexagonResized120x120.png"]]
    property int optionObject: 0
    property int checkedButton: 0
    property bool isFolderEmpty: true

    objectName: "Home Page"

    Row{
        anchors.centerIn: parent

        Text {
            id: noFileText
            visible: isFolderEmpty
            color: "#000000"
            opacity: 0.3
            font.pixelSize: homePage.width * 0.03
            font.family: applicationWindow.font.family
            text: qsTr("Nenhuma Rasterização Completa")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        GroupBox {
            visible: !isFolderEmpty
            title: qsTr("Opção")
            ColumnLayout {
                RadioButton {
                    checked: true
                    width: parent.width * 0.01
                    text: qsTr("Triangulo")
                    onCheckedChanged:{
                        if(checked){
                            optionObject = 0
                        }
                    }
                }
                RadioButton { 
                    width: parent.width * 0.01
                    text: qsTr("Quadrado")
                    onCheckedChanged:{
                        if(checked){
                            optionObject = 1
                        }
                    }
                }
                RadioButton  { 
                    width: parent.width * 0.01
                    text: qsTr("Hexagono") 
                    onCheckedChanged:{
                        if(checked){
                            optionObject = 2
                        }
                    }
                }
            }
        }

        GroupBox {
            visible: !isFolderEmpty
            title: qsTr("Resolução")
            ColumnLayout {
                RadioButton {
                    checked: true
                    width: parent.width * 0.01
                    text: qsTr("20x20")
                    onCheckedChanged:{
                        if(checked){
                            checkedButton = 0
                        }
                    }
                }
                RadioButton { 
                    width: parent.width * 0.01
                    text: qsTr("60x60")
                    onCheckedChanged:{
                        if(checked){
                            checkedButton = 1
                        }
                    }
                }
                RadioButton  { 
                    width: parent.width * 0.01
                    text: qsTr("120x120") 
                    onCheckedChanged:{
                        if(checked){
                            checkedButton = 2
                        }
                    }
                }
            }
        }

        Image {
            visible: !isFolderEmpty
            width: homePage.width * 0.7
            height: homePage.height * 0.9
            source: imagesSources[optionObject][checkedButton]
        }
    }

    Component.onCompleted:{
        funcaoFolder.folderIsEmpty()
    }

    Connections {
        target: funcaoFolder

        function onEmptyFolder(empty){
            isFolderEmpty = empty
        }
    }

}
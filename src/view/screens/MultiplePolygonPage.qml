import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: multiplePolygonPage
    property int checkedButton: 0
    property var imagesSources: ["../../assets/multiple/multipleOriginal.png", "../../assets/multiple/multipleResized.png"]
    property bool isFolderEmpty: true

    objectName: "Múltiplos Polígonos Page"

    Row{
        anchors.centerIn: parent

        Text {
            id: noFileText
            visible: isFolderEmpty
            color: "#000000"
            opacity: 0.3
            font.pixelSize: multiplePolygonPage.width * 0.03
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
                    text: qsTr("Original 20x20")
                    onCheckedChanged:{
                        if(checked){
                            checkedButton = 0
                        }
                    }
                }

                RadioButton { 
                    width: parent.width * 0.01
                    text: qsTr("Resized 120x120")
                    onCheckedChanged:{
                        if(checked){
                            checkedButton = 1
                        }
                    }
                }
            }
        }

        Image {
            visible: !isFolderEmpty
            id: imageRaster
            width: multiplePolygonPage.width * 0.8
            height: multiplePolygonPage.height * 0.8
            source: imagesSources[checkedButton]
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
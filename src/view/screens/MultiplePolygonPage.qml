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

        GroupBox {
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
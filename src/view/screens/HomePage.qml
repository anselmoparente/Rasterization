import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: homePage
    property var imagesSources: ["../../assets/res20_20.png", "../../assets/res60_60.png", "../../assets/res120_120.png"]
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
                    text: qsTr("80x80")
                    onCheckedChanged:{
                        if(checked){
                            checkedButton = 1
                        }
                    }
                }
                RadioButton  { 
                    width: parent.width * 0.01
                    text: qsTr("150x150") 
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
            id: imageRaster
            width: homePage.width * 0.8
            height: homePage.height * 0.8
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
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: multiplePolygonPage
    property int checkedButton: 0
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

        Image {
            visible: !isFolderEmpty
            id: imageRaster
            width: multiplePolygonPage.width
            height: multiplePolygonPage.height
            source: '../../assets/multiple.png'
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
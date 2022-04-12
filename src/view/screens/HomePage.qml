import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: homePage
    objectName: "Home Page"
    Keys.onReturnPressed: homePage.forceActiveFocus()

    Row{
        anchors.centerIn: parent

        // Text {
        //     id: noFileText
            
        //     color: "#000000"
        //     opacity: 0.3
        //     font.pixelSize: homePage.width * 0.01
        //     font.family: applicationWindow.font.family
        //     text: qsTr("Nenhuma Rasterização Completa")
        //     horizontalAlignment: Text.AlignHCenter
        //     verticalAlignment: Text.AlignVCenter
        // }

        GroupBox {
            title: qsTr("Resolução")
            ColumnLayout {
                RadioButton {
                    width: parent.width * 0.01
                    text: qsTr("20x20")
                }
                RadioButton { 
                    width: parent.width * 0.01
                    text: qsTr("80x80")
                }
                RadioButton  { 
                    width: parent.width * 0.01
                    text: qsTr("150x150") 
                }
            }
        }
    }
}
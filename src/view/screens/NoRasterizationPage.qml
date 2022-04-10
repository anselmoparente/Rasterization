import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: noRasterizationPage
    objectName: "Home Page"
    Keys.onReturnPressed: noRasterizationPage.forceActiveFocus()

    Text {
        id: noFileText
        color: "#000000"
        opacity: 0.3
        font.pixelSize: 0.022 * parent.height
        font.family: applicationWindow.font.family
        text: qsTr("Nenhuma Rasterização Completa")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}

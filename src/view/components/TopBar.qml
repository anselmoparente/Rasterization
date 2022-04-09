import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
    id: topBar
    property string topBarTitleText;

    height: 56
    color: "#5850A6"
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.rightMargin: 0
    anchors.leftMargin: 0
    anchors.topMargin: 0

    Keys.onReturnPressed: btnMinimize.forceActiveFocus()

    Text {
        id: topBarTitle
        text: topBarTitleText
        color: "#ffffff"
        font.pixelSize: 24
        font.family: applicationWindow.font.family
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: leftMenu.width + 45
    }
}

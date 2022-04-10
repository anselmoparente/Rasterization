import QtQuick 2.15
import QtGraphicalEffects 1.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.3
import "components"
import "screens"
import "basic"

ApplicationWindow {
    id: applicationWindow
    property alias actualPage: routes.currentItem
    property int windowStatus: 0

    width: 1280
    height: 720
    minimumWidth: 960
    minimumHeight: 540
    visible: true
    title: qsTr("Rasterização")

    onActiveFocusItemChanged: {
        print("activeFocusItem", activeFocusItem)
    }

    // FontLoaders
    FontLoader {
        id: fontAnodina
        source: "fonts/Anodina-Regular.otf"
    }
    // children
    Rectangle {
        id: contentArea
        color: "#ffffff"
        anchors.left: leftMenu.right
        anchors.right: parent.right
        anchors.top: topBar.bottom
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        anchors.leftMargin: 0

        Keys.onReturnPressed: actualPage.forceActiveFocus()

        StackView {
            id: routes
            anchors.fill: parent
            initialItem: Qt.resolvedUrl("screens/NoRasterizationPage.qml")

            pushEnter: Transition {
                PropertyAnimation {
                    property: "opacity"
                    from: 0
                    to:1
                    duration: 200
                }
            }

            pushExit: Transition {
                PropertyAnimation {
                    property: "opacity"
                    from: 1
                    to:0
                    duration: 200
                }
            }
        }
    }
    Color{itemId: contentArea}

    // topBar
    Shadow{itemId: topBar}
    TopBar {id: topBar; topBarTitleText: "Rasterização"}
    Color{itemId: topBar}

    // leftMenu
    Shadow{itemId: leftMenu}
    LeftMenu {id: leftMenu}
    Color{itemId: leftMenu}
}
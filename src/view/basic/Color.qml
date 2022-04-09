import QtQuick 2.15
import QtGraphicalEffects 1.15
import QtQuick.Controls 2.15

ColorOverlay{
    property var itemId;

    color: "#000000"
    opacity: 0.2
    source: itemId
    anchors.fill: itemId
    visible: itemId.focus
}
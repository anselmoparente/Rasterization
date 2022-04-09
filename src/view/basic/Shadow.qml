import QtQuick 2.15
import QtGraphicalEffects 1.15
import QtQuick.Controls 2.15

DropShadow {
    property var itemId;

    anchors.fill: itemId
    verticalOffset: 3
    radius: 8
    samples: 16
    color: "#80000000"
    source: itemId

    Accessible.ignored: true
}
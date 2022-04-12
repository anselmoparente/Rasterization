import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls 1.4

Item {
    id: rasterizationLines
    visible: true
    objectName: "Rasterization Lines Page"
    
    Keys.onReturnPressed: rasterizationLines.forceActiveFocus()
    
    Column{
        anchors.centerIn: parent
        spacing: rasterizationLines.height * 0.02

        Row {
            spacing: rasterizationLines.width * 0.05
            
            Text{
                text: "Ponto A (x,y)"
                font.pixelSize: rasterizationLines.width * 0.015
            }

            Column{
                Rectangle {
                    width: rasterizationLines.width * 0.04
                    height: rasterizationLines.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        id: x1
                        width: rasterizationLines.width * 0.04
                        height: parent.height
                        font.pixelSize: rasterizationLines.width * 0.012
                        horizontalAlignment: TextInput.AlignHCenter 
                        placeholderText: "0-99"
                        validator: RegExpValidator{
                            regExp: /^[0-9]{0,2}$/
                        }
                    }
                }
            }

            Column{
                Rectangle {
                    width: rasterizationLines.width * 0.04
                    height: rasterizationLines.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        id: y1
                        width: parent.width
                        height: parent.height
                        font.pixelSize: rasterizationLines.width * 0.012
                        horizontalAlignment: TextInput.AlignHCenter 
                        placeholderText: "0-99"
                        validator: RegExpValidator{
                            regExp: /^[0-9]{0,2}$/
                        }
                    }
                }
            }
        }

        Row {
            spacing: rasterizationLines.width * 0.05

            Text{
                text: "Ponto B (x,y)"
                font.pixelSize: rasterizationLines.width * 0.015
            }

            Column{
                Rectangle {
                    width: rasterizationLines.width * 0.04
                    height: rasterizationLines.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        id: x2
                        width: parent.width
                        height: parent.height
                        font.pixelSize: rasterizationLines.width * 0.012
                        horizontalAlignment: TextInput.AlignHCenter 
                        placeholderText: "0-99"
                        validator: RegExpValidator{
                            regExp: /^[0-9]{0,2}$/
                        }
                        
                    }
                }
        }

            Column{
                Rectangle {
                    width: rasterizationLines.width * 0.04
                    height: rasterizationLines.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        id: y2
                        width: parent.width
                        height: parent.height
                        font.pixelSize: rasterizationLines.width * 0.012
                        horizontalAlignment: TextInput.AlignHCenter 
                        placeholderText: "0-99"
                        validator: RegExpValidator{
                            regExp: /^[0-9]{0,2}$/
                        }
                    }
                }
            }
        }

        Button{
            id: rasterLine
            width: rasterizationLines.width * 0.265
            height: rasterizationLines.height * 0.04
            text: "Rasterizar"

            onClicked: {
                funcaoRaster.treatLineCoordinates(x1.getText(0,2), y1.getText(0,2), x2.getText(0,2), y2.getText(0,2))
            }
        }
    }
}
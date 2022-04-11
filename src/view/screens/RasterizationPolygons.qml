import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.15

Item {
    id: rasterizationPolygons
    visible: true
    objectName: "Rasterization Polygons Page"
    
    Keys.onReturnPressed: rasterizationPolygons.forceActiveFocus()
    
    Column{
        anchors.centerIn: parent
        spacing: rasterizationPolygons.height * 0.02
 
        GroupBox {
            title: qsTr("Polígono")
            ColumnLayout {
                anchors.fill: parent
                RadioButton {
                    text: qsTr("Triangulo Equilátero")
                }
                RadioButton { 
                    text: qsTr("Quadrado")
                }
                RadioButton  { 
                    text: qsTr("Hexágono") 
                }
            }
        }
        
        Row {
            spacing: rasterizationPolygons.width * 0.03
            Column{
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationPolygons.width * 0.015
                }
                Rectangle {
                    width: rasterizationPolygons.width * 0.04
                    height: rasterizationPolygons.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: rasterizationPolygons.width * 0.04
                        height: parent.height
                        font.pixelSize: rasterizationPolygons.width * 0.012
                        horizontalAlignment: TextInput.AlignHCenter 
                        placeholderText: "0-99"
                        validator: RegExpValidator{
                            regExp: /^[0-9]{0,2}$/
                        }
                    }
                }
        }

            Column{
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationPolygons.width * 0.015
                }
                Rectangle {
                    width: rasterizationPolygons.width * 0.04
                    height: rasterizationPolygons.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: rasterizationPolygons.width * 0.04
                        height: parent.height
                        font.pixelSize: rasterizationPolygons.width * 0.012
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
            spacing: rasterizationPolygons.width * 0.03
            Column{
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationPolygons.width * 0.015
                }
                Rectangle {
                    width: rasterizationPolygons.width * 0.04
                    height: rasterizationPolygons.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: rasterizationPolygons.width * 0.04
                        height: parent.height
                        font.pixelSize: rasterizationPolygons.width * 0.012
                        horizontalAlignment: TextInput.AlignHCenter 
                        placeholderText: "0-99"
                        validator: RegExpValidator{
                            regExp: /^[0-9]{0,2}$/
                        }
                    }
                }
        }

            Column{
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationPolygons.width * 0.015
                }
                Rectangle {
                    width: rasterizationPolygons.width * 0.04
                    height: rasterizationPolygons.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: rasterizationPolygons.width * 0.04
                        height: parent.height
                        font.pixelSize: rasterizationPolygons.width * 0.012
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
            spacing: rasterizationPolygons.width * 0.03
            Column{
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationPolygons.width * 0.015
                }
                Rectangle {
                    width: rasterizationPolygons.width * 0.04
                    height: rasterizationPolygons.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: rasterizationPolygons.width * 0.04
                        height: parent.height
                        font.pixelSize: rasterizationPolygons.width * 0.012
                        horizontalAlignment: TextInput.AlignHCenter 
                        placeholderText: "0-99"
                        validator: RegExpValidator{
                            regExp: /^[0-9]{0,2}$/
                        }
                    }
                }
        }

            Column{
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationPolygons.width * 0.015
                }
                Rectangle {
                    width: rasterizationPolygons.width * 0.04
                    height: rasterizationPolygons.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: rasterizationPolygons.width * 0.04
                        height: parent.height
                        font.pixelSize: rasterizationPolygons.width * 0.012
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
            spacing: rasterizationPolygons.width * 0.03
            Column{
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationPolygons.width * 0.015
                }
                Rectangle {
                    width: rasterizationPolygons.width * 0.04
                    height: rasterizationPolygons.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: rasterizationPolygons.width * 0.04
                        height: parent.height
                        font.pixelSize: rasterizationPolygons.width * 0.012
                        horizontalAlignment: TextInput.AlignHCenter 
                        placeholderText: "0-99"
                        validator: RegExpValidator{
                            regExp: /^[0-9]{0,2}$/
                        }
                    }
                }
        }

            Column{
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationPolygons.width * 0.015
                }
                Rectangle {
                    width: rasterizationPolygons.width * 0.04
                    height: rasterizationPolygons.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: rasterizationPolygons.width * 0.04
                        height: parent.height
                        font.pixelSize: rasterizationPolygons.width * 0.012
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
            spacing: rasterizationPolygons.width * 0.03
            Column{
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationPolygons.width * 0.015
                }
                Rectangle {
                    width: rasterizationPolygons.width * 0.04
                    height: rasterizationPolygons.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: rasterizationPolygons.width * 0.04
                        height: parent.height
                        font.pixelSize: rasterizationPolygons.width * 0.012
                        horizontalAlignment: TextInput.AlignHCenter 
                        placeholderText: "0-99"
                        validator: RegExpValidator{
                            regExp: /^[0-9]{0,2}$/
                        }
                    }
                }
            }

            Column{
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationPolygons.width * 0.015
                }
                Rectangle {
                    width: rasterizationPolygons.width * 0.04
                    height: rasterizationPolygons.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: rasterizationPolygons.width * 0.04
                        height: parent.height
                        font.pixelSize: rasterizationPolygons.width * 0.012
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
            spacing: rasterizationPolygons.width * 0.03
            Column{
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationPolygons.width * 0.015
                }
                Rectangle {
                    width: rasterizationPolygons.width * 0.04
                    height: rasterizationPolygons.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: rasterizationPolygons.width * 0.04
                        height: parent.height
                        font.pixelSize: rasterizationPolygons.width * 0.012
                        horizontalAlignment: TextInput.AlignHCenter 
                        placeholderText: "0-99"
                        validator: RegExpValidator{
                            regExp: /^[0-9]{0,2}$/
                        }
                    }
                }
            }

            Column{
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationPolygons.width * 0.015
                }
                Rectangle {
                    width: rasterizationPolygons.width * 0.04
                    height: rasterizationPolygons.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: rasterizationPolygons.width * 0.04
                        height: parent.height
                        font.pixelSize: rasterizationPolygons.width * 0.012
                        horizontalAlignment: TextInput.AlignHCenter 
                        placeholderText: "0-99"
                        validator: RegExpValidator{
                            regExp: /^[0-9]{0,2}$/
                        }
                    }
                }
            }
        }
    }
}
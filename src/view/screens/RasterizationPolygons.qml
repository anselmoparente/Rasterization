import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: rasterizationPolygons
    visible: true
    objectName: "Rasterization Polygons Page"
    property int checkedButton: 0
    
    Column{
        anchors.centerIn: parent
        spacing: rasterizationPolygons.height * 0.02
 
        GroupBox {
            title: qsTr("Polígono")
            ColumnLayout {
                anchors.fill: parent
                RadioButton {
                    id: triangleButton
                    checked: true
                    text: qsTr("Triangulo Equilátero")
                    onCheckedChanged:{
                        if(checked){
                            checkedButton = 0
                        }
                    }
                }
                RadioButton {
                    id: squareButton
                    text: qsTr("Quadrado")
                    onCheckedChanged:{
                        if(checked){
                            checkedButton = 1
                        }
                    }
                }
                RadioButton  {
                    id: hexaButton
                    text: qsTr("Hexágono") 
                    onCheckedChanged:{
                        if(checked){
                            checkedButton = 2
                        }
                    }
                }
            }
        }
        
        Row {
            spacing: rasterizationPolygons.width * 0.03

            Text{
                text: "Ponto A (x,y)"
                font.pixelSize: rasterizationPolygons.width * 0.015
            }

            Column{

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
            
            Text{
                text: "Ponto B (x,y)"
                font.pixelSize: rasterizationPolygons.width * 0.015
            }

            Column{

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
            
            Text{
                text: "Ponto C (x,y)"
                font.pixelSize: rasterizationPolygons.width * 0.015
            }

            Column{

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
            visible: hexaButton.checked || squareButton.checked
            spacing: rasterizationPolygons.width * 0.03
            
            Text{
                text: "Ponto D (x,y)"
                font.pixelSize: rasterizationPolygons.width * 0.015
            }

            Column{

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
            visible: hexaButton.checked
            spacing: rasterizationPolygons.width * 0.03
            
            Text{
                text: "Ponto E (x,y)"
                font.pixelSize: rasterizationPolygons.width * 0.015
            }

            Column{

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
            visible: hexaButton.checked
            spacing: rasterizationPolygons.width * 0.03
            
            Text{
                text: "Ponto F (x,y)"
                font.pixelSize: rasterizationPolygons.width * 0.015
            }

            Column{

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


        Button{
            id: rasterPolygons
            width: rasterizationPolygons.width * 0.265
            height: rasterizationPolygons.height * 0.04
            text: "Rasterizar"

            onClicked: {
                print(checkedButton)
            }
        }
    }
}
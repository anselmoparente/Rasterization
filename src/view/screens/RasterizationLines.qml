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
            spacing: rasterizationLines.width * 0.03
            Column{
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationLines.width * 0.015
                }
                Rectangle {
                    width: rasterizationLines.width * 0.04
                    height: rasterizationLines.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
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
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationLines.width * 0.015
                }
                Rectangle {
                    width: rasterizationLines.width * 0.04
                    height: rasterizationLines.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
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
            spacing: rasterizationLines.width * 0.03
            Column{
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationLines.width * 0.015
                }
                Rectangle {
                    width: rasterizationLines.width * 0.04
                    height: rasterizationLines.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
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
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationLines.width * 0.015
                }
                Rectangle {
                    width: rasterizationLines.width * 0.04
                    height: rasterizationLines.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
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
            spacing: rasterizationLines.width * 0.03
            Column{
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationLines.width * 0.015
                }
                Rectangle {
                    width: rasterizationLines.width * 0.04
                    height: rasterizationLines.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
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
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationLines.width * 0.015
                }
                Rectangle {
                    width: rasterizationLines.width * 0.04
                    height: rasterizationLines.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
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
            spacing: rasterizationLines.width * 0.03
            Column{
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationLines.width * 0.015
                }
                Rectangle {
                    width: rasterizationLines.width * 0.04
                    height: rasterizationLines.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
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
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationLines.width * 0.015
                }
                Rectangle {
                    width: rasterizationLines.width * 0.04
                    height: rasterizationLines.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
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
            spacing: rasterizationLines.width * 0.03
            Column{
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationLines.width * 0.015
                }
                Rectangle {
                    width: rasterizationLines.width * 0.04
                    height: rasterizationLines.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
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
                Text{
                    text: "Ponto"
                    font.pixelSize: rasterizationLines.width * 0.015
                }
                Rectangle {
                    width: rasterizationLines.width * 0.04
                    height: rasterizationLines.height * 0.04
                    border.color: 'gray'
                    border.width: 1

                    TextField{
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
    }
}
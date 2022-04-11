import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: rasterizationLines
    visible: true
    width: parent.width
    height: parent.height
    objectName: "Rasterization Lines Page"
    
    Keys.onReturnPressed: rasterizationLines.forceActiveFocus()
    
    Column{
        anchors.centerIn: parent
        Row {
            spacing: rasterizationLines.width * 0.03
            Column{
                Text{
                    text: "Ponto"
                }
                Rectangle {
                    width: parent.width
                    height: 25
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: parent.width
                        height: parent.height
                        validator: RegExpValidator{
                            regExp: /^[0-9]{0,2}$/
                        }
                    }
                }
        }

            Column{
                Text{
                    text: "Ponto"
                }
                Rectangle {
                    width: parent.width
                    height: 25
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: parent.width
                        height: parent.height
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
                }
                Rectangle {
                    width: parent.width
                    height: 25
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: parent.width
                        height: parent.height
                        validator: RegExpValidator{
                            regExp: /^[0-9]{0,2}$/
                        }
                        
                    }
                }
        }

            Column{
                Text{
                    text: "Ponto"
                }
                Rectangle {
                    width: parent.width
                    height: 25
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: parent.width
                        height: parent.height
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
                }
                Rectangle {
                    width: parent.width
                    height: 25
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: parent.width
                        height: parent.height
                        validator: RegExpValidator{
                            regExp: /^[0-9]{0,2}$/
                        }
                        
                    }
                }
        }

            Column{
                Text{
                    text: "Ponto"
                }
                Rectangle {
                    width: parent.width
                    height: 25
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: parent.width
                        height: parent.height
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
                }
                Rectangle {
                    width: parent.width
                    height: 25
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: parent.width
                        height: parent.height
                        validator: RegExpValidator{
                            regExp: /^[0-9]{0,2}$/
                        }
                        
                    }
                }
        }

            Column{
                Text{
                    text: "Ponto"
                }
                Rectangle {
                    width: parent.width
                    height: 25
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: parent.width
                        height: parent.height
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
                }
                Rectangle {
                    width: parent.width
                    height: 25
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: parent.width
                        height: parent.height
                        validator: RegExpValidator{
                            regExp: /^[0-9]{0,2}$/
                        }
                        
                    }
                }
            }

            Column{
                Text{
                    text: "Ponto"
                }
                Rectangle {
                    width: parent.width
                    height: 25
                    border.color: 'gray'
                    border.width: 1

                    TextField{
                        width: parent.width
                        height: parent.height
                        validator: RegExpValidator{
                            regExp: /^[0-9]{0,2}$/
                        }
                    }
                }
            }
        }
    }
}
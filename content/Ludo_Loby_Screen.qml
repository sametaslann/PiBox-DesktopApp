import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    id: ludo
    width: 1920
    height: 1080

    Image {
        id: oIG
        x: 0
        y: 0
        width: 1920
        height: 1080
        source: "images/OIG.jpeg"
        scale: 1
        transformOrigin: Item.Center
        fillMode: Image.Stretch



        Frame {
            id: virtulizationFrame
            x: 108
            y: 110
            width: 1244
            height: 595

            Loader{
                id: loader
                x: 0
                y: 0
                width: 1225
                height: 571

                source: "Ludo_game_screen.qml"
            }

            Text {
                id: text1
                x: -12
                y: -67
                width: 224
                height: 31
                text: "Game Screen"
                font.pixelSize: 27
            }
        }

        Image {
            id: unnamed
            x: 1419
            y: 125
            width: 406
            height: 324
            source: "images/unnamed.png"
            fillMode: Image.PreserveAspectFit

            TextEdit {
                id: textEdit
                x: 55
                y: -26
                width: 80
                height: 20
                font.pixelSize: 16

                Connections {
                        target: socket_comm
                        onNewDataReceived: {
                            textEdit.text = player1
                        }
                    }
            }

            TextEdit {
                id: textEdit1
                x: 280
                y: -26
                width: 80
                height: 20
                font.pixelSize: 16

                Connections {
                        target: socket_comm
                        onNewDataReceived: {
                            textEdit1.text = player2
                        }
                    }
            }

            TextEdit {
                id: textEdit2
                x: 55
                y: 341
                width: 80
                height: 20
                font.pixelSize: 16

                Connections {
                        target: socket_comm
                        onNewDataReceived: {
                            textEdit2.text = player3
                        }
                    }
            }

            TextEdit {
                id: textEdit3
                x: 279
                y: 339
                width: 80
                height: 20
                font.pixelSize: 16

                Connections {
                        target: socket_comm
                        onNewDataReceived: {
                            textEdit3.text = player4
                        }
                    }
            }
        }
        Loader{
            id: pageLoader
            anchors.fill: parent
            asynchronous: true
            source: ""

            onLoaded: {
                button.visible=false
                waiterList.visible = false
                pageLoader.parent.children.remove(pageLoader);
            }
        }

        Button {
            id: button
            x: 1457
            y: 911
            width: 331
            height: 97
            text: "Exit Loby"
            font.pointSize: 27

            onClicked : {
                pageLoader.source = "Game_Choose_Screen.qml";
            }


        }

        ListView {
            id: waiterList
            x: 105
            y: 782
            width: 304
            height: 267
            model: ListModel {
                ListElement {
                    name: "Player4"
                    colorCode: "yellow"
                }

                ListElement {
                    name: "Player1"
                    colorCode: "red"
                }

                ListElement {
                    name: "Player2"
                    colorCode: "blue"
                }

                ListElement {
                    name: "Player3"
                    colorCode: "green"
                }
            }
            delegate: Item {
                x: 5
                width: 80
                height: 40
                Row {
                    id: row1
                    spacing: 10
                    Rectangle {
                        width: 40
                        height: 40
                        color: colorCode
                    }

                    Text {
                        text: name
                        anchors.verticalCenter: parent.verticalCenter
                        font.bold: true
                    }
                }
            }

            Text {
                id: text2
                x: 3
                y: -45
                width: 224
                height: 31
                text: "Waiter List"
                font.pixelSize: 27
            }
        }
    }
}

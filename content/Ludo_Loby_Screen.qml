
import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    id: ludo
    width: 1920
    height: 1080

    property var dummyData: ["Player1", "Player2", "Player3", "Player4", "Player5", "Player6", "Player7", "Player8", "Player9", "Player10"]

    Image {
        id: oIG
        x: 0
        y: -5
        width: 1920
        height: 1080

        source: "images/background.jpg"
        scale: 1
        transformOrigin: Item.Center
        fillMode: Image.Stretch



        Rectangle {
            id: virtulizationFrame
            x: 110
            y: 118
            width: 1236
            height: 905
            visible: true

            clip: false
            color:"transparent"

            Loader{
                id: loader
                x: -78
                y: -91
                width: 1329
                height: 1004

                source: "Ludo_game_screen.qml"
            }

            /*Text {
                id: text1
                x: -12
                y: -67
                width: 224
                height: 31
                text: "Game Screen"
                font.pixelSize: 27
                color:"white"
            }*/
        }

        /*Image {
            id: unnamed
            x: 1024
            y: 748
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
        }*/
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

            Text {
                id: player1
                x: 1728
                y: 60
                width: 89
                height: 30
                text: "Player 1"
                font.letterSpacing: 1
                color: "#ff0000"
                font.pixelSize: 22
                font.italic: false
                font.weight: Font.DemiBold
            }
            Text {
                id: player2
                x: 1728
                y: 100
                width: 89
                height: 30
                text: "Player 2"
                font.letterSpacing: 1
                color: "#17a81a"
                font.pixelSize: 22
                font.italic: false
                font.weight: Font.DemiBold
            }
            Text {
                id: player3
                x: 1728
                y: 140
                width: 89
                height: 30
                text: "Player 3"
                font.letterSpacing: 1
                color: "#e3f414"
                font.pixelSize: 22
                font.italic: false
                font.weight: Font.DemiBold
            }

            Text {
                id: player4
                x: 1728
                y: 180
                width: 89
                height: 30
                text: "Player 4"
                font.letterSpacing: 1
                color: "#3314f4"
                font.pixelSize: 22
                font.italic: false
                font.weight: Font.DemiBold
            }

            ScrollView {
                id: scrollView
                x: 1416
                y: 325
                width: 464
                height: 497
                //ScrollBar.vertical.policy: ScrollBar.AlwaysOn
                ScrollBar.vertical.position: scrollView.contentHeight

                Column {
                    id: notificationColumn
                    spacing: 10

                            // Populate the scroll view with rectangles
                            Repeater {
                                model: 20

                                Rectangle {
                                    width: scrollView.width-5
                                    height: 35
                                    radius: 5
                                    color: "transparent"

                                    border.color: "#828282"
                                    border.width: 1

                                    Text {
                                        anchors.centerIn: parent.left
                                        leftPadding: 15
                                        topPadding: 8
                                        text: "Notification " + (index + 1)

                                    }
                                }
                            }
                }

               Component.onCompleted: {
                   let mostAppear = notificationColumn.children.length-8;
                    mostAppear = mostAppear >= 0 ? mostAppear : 0;
                   for (var i = notificationColumn.children.length; i >= 0; i--) {
                                   var item = notificationColumn.children[i];
                                   if (item instanceof Rectangle ) {
                                       item.children[0].opacity = 2* (i/notificationColumn.children.length);
                                       item.opacity =  2* (i/notificationColumn.children.length); // Weaker color towards the top1
                                   }
                               }
               }
            }



        }

        ProgressBar {
            id: redBar
            x: 1420
            y: 60
            width: 282
            height: 27
            value: 0.4
            padding: 2

            background: Rectangle {
                implicitWidth: 200
                implicitHeight: 6
                color: "#e6e6e6"
                radius: 10
            }

            contentItem: Item {
                implicitWidth: 200
                implicitHeight: 4

                Rectangle {
                    width: redBar.visualPosition * parent.width
                    height: parent.height
                    radius: 10
                    color: "#eb2a25"
                }
            }

            Text {
                id: redText
                x: 238
                y: 0
                width: 36
                height: 25
                text: redBar.value * 100 + "%"
                font.pixelSize: 20
            }
        }

        ProgressBar {
            id: greenBar
            x: 1420
            y: 100
            width: 282
            height: 27
            value: 0.2
            padding: 2

            background: Rectangle {
                implicitWidth: 200
                implicitHeight: 6
                color: "#e6e6e6"
                radius: 10
            }

            contentItem: Item {
                implicitWidth: 200
                implicitHeight: 4

                Rectangle {
                    width: greenBar.visualPosition * parent.width
                    height: parent.height
                    radius: 10
                    color: "#17a81a"
                }
            }
            Text {
                id: greenText
                x: 238
                y: 0
                width: 36
                height: 25
                text: greenBar.value * 100 + "%"
                font.pixelSize: 20
            }
        }



        ProgressBar {
            id: yellowBar
            x: 1420
            y: 140
            width: 282
            height: 27
            value: 0.4
            padding: 2

            background: Rectangle {
                implicitWidth: 200
                implicitHeight: 6
                color: "#e6e6e6"
                radius: 10
            }

            contentItem: Item {
                implicitWidth: 200
                implicitHeight: 4

                Rectangle {
                    width: yellowBar.visualPosition * parent.width
                    height: parent.height
                    radius: 10
                    color: "#e3f414"
                }
            }

            Text {
                id: yellowText
                x: 238
                y: 0
                width: 36
                height: 25
                text: yellowBar.value * 100 + "%"
                font.pixelSize: 20
            }
        }


        ProgressBar {
            id: blueBar
            x: 1420
            y: 180
            width: 282
            height: 27
            value: 0.6
            padding: 2

            background: Rectangle {
                implicitWidth: 200
                implicitHeight: 6
                color: "#e6e6e6"
                radius: 10
            }

            contentItem: Item {
                implicitWidth: 200
                implicitHeight: 4

                Rectangle {
                    width: blueBar.visualPosition * parent.width
                    height: parent.height
                    radius: 10
                    color: "#3314f4"
                }
            }
            Text {
                id: blueText
                x: 238
                y: 0
                width: 36
                height: 25
                text: blueBar.value * 100 + "%"
                font.pixelSize: 20
            }
        }


        RoundButton {
            id: button
            x: 1457
            y: 911
            width: 331
            height: 97
            text: "Exit Loby"
            font.pointSize: 27

            onClicked : {
                socket_comm.stopLudo();
                pageLoader.source = "Game_Choose_Screen.qml";
            }


        }
    }

    Item {
        id: __materialLibrary__
    }
}


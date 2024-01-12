
import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    id: okey
    width: 1920
    height: 1080

    property var dummyData: ["Player1", "Player2", "Player3", "Player4", "Player5", "Player6", "Player7", "Player8", "Player9", "Player10"]
    property var notificationsData: okeyController.notifications
    property string subText: ""

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

                source: "qrc:qt/qml/Quick3DAssets/Okey/Okey.qml"
            }
        }


        Item{
            id: pageLoader
            anchors.fill: parent

            Text {
                id: player1
                x: 1728
                y: 60
                width: 89
                height: 30
                text: okeyController.player1Text
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
                text: okeyController.player2Text
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
                text: okeyController.player3Text
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
                text: okeyController.player4Text
                font.letterSpacing: 1
                color: "#3314f4"
                font.pixelSize: 22
                font.italic: false
                font.weight: Font.DemiBold
            }


            Text {
                id: notificationText
                x: 1416
                y: 297
                width: 126
                height: 25
                text: "Notifications"
                font.pixelSize: 20
            }


                ScrollView {
                    id: scrollView
                    x: 1416
                    y: 325
                    width: 464
                    height: 497

                    background: Rectangle{

                       color: "lightgray"
                       border.color: "#000000"
                       border.width: 2
                       opacity: 0.1
                    }

                    //ScrollBar.vertical.policy: ScrollBar.AlwaysOn
                    ScrollBar.vertical.position: 1.0 - ScrollBar.vertical.size

                    Column {
                        id: notificationColumn
                        spacing: 12
                        leftPadding: 5
                        topPadding: 10


                                // Populate the scroll view with rectangles
                                Repeater {
                                    id: notificationRepeater
                                    model: notificationsData

                                    Rectangle {
                                        width: scrollView.width-10

                                        height: 35
                                        radius: 5
                                        color: "transparent"

                                        border.color: "#828282"
                                        border.width: 1

                                        Text {
                                            //anchors.centerIn: parent.left
                                            leftPadding: 15
                                            topPadding: 8
                                            text: modelData
                                        }
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
            value: okeyController.progressBar[0]
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
                x: -70
                y: 0
                width: 36
                height: 25
                text: (redBar.value * 100).toFixed(2) + "%"
                font.pixelSize: 20
            }


        }

        ProgressBar {
            id: greenBar
            x: 1420
            y: 100
            width: 282
            height: 27
            value: okeyController.progressBar[1]
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
                x: -70
                y: 0
                width: 36
                height: 25
                text: (greenBar.value * 100).toFixed(2) + "%"
                font.pixelSize: 20
            }
        }



        ProgressBar {
            id: yellowBar
            x: 1420
            y: 140
            width: 282
            height: 27
            value: okeyController.progressBar[2]
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
                x: -70
                y: 0
                width: 36
                height: 25
                text: (yellowBar.value * 100).toFixed(2)+ "%"
                font.pixelSize: 20
            }
        }


        ProgressBar {
            id: blueBar
            x: 1420
            y: 180
            width: 282
            height: 27
            value: okeyController.progressBar[3]
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
                x: -70
                y: 0
                width: 36
                height: 25
                text: (blueBar.value * 100).toFixed(2) + "%"
                font.pixelSize: 20
            }
        }

        Popup {
            id: popup
            width: 400
            height: 300

            modal: true
            focus: true
            //closePolicy: Popup.CloseOnEscape

            x: (parent.width - width) / 2
            y: (parent.height - height)/2

            background: Rectangle{
                border.color: "#e92121"
                border.width: 3
                color: "#979696"
                radius:20
            }
            //visible: true

            Connections{
                target: okeyController
                onPopupOpen: {
                    if(status === "winner")
                        subText = player + " is WINNER!";

                    else
                        subText = player + " is QUITED!";

                    //popup.open()
                }
            }


            Column {
                anchors.fill: parent
                spacing: 40
                topPadding: 50

                Label {
                    id: popupLabel2
                    font.pixelSize: 30
                    font.weight: Font.DemiBold
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "GAME OVER"
                }
                Label {
                    id: popupLabel
                    font.pixelSize: 30
                    styleColor: "#aa2323"
                    font.weight: Font.DemiBold
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: subText
                }

                Button {
                    text: "Close Okey Game"
                    anchors.horizontalCenter: parent.horizontalCenter
                    onClicked: {
                        socket_comm.stopOkey();
                        mainLoader.source = "qrc:/qt/qml/content/Game_Choose_Screen.qml";
                    }

                }
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

                socket_comm.stopOkey();
                mainLoader.source = "qrc:/qt/qml/content/Game_Choose_Screen.qml";

            }


        }
    }

    Item {
        id: __materialLibrary__
    }
}


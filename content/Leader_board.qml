import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts

Item {
    width: 1920
    height: 1080

    property var dummyData: ["Player1", "Player2", "Player3", "Player4", "Player5", "Player6", "Player7", "Player8", "Player9", "Player10"]

    Image {
        id: oIG
        x: -7
        y: 0
        width: 1927
        height: 1080
        source: "images/back.jpg"
        fillMode: Image.Stretch
        transformOrigin: Item.Center
        scale:1

        ScrollView {
            anchors.fill: parent
            anchors.rightMargin: 601
            anchors.bottomMargin: 159
            anchors.leftMargin: 44
            anchors.topMargin: 231
            GridLayout {
                id: gridLayout
                x: -11
                y: 10
                width: 1293
                height: 678
                columns: 4
                rows: 5
                columnSpacing: 2
                rowSpacing: 2

                Repeater {
                    model: socket_comm.leaderBoard

                    Rectangle {
                        width: 300
                        height: 50
                        color: "#ffffff"
                        radius: 7
                        border.color: "#004cf7"

                        Text {
                            text: modelData
                            font.pointSize: 15
                            font.bold: false
                            anchors.centerIn: parent
                        }
                    }
                }
            }




        }

        Text {
            id: text1
            x: 31
            y: 26
            width: 1036
            height: 56
            text: qsTr("LeaderBoard")
            font.pixelSize: 60
            color: "white"
        }
        Label {
            id: label
            x: 95
            y: 201
            width: 247
            height: 79
            text: qsTr("USERNAME")
            font.weight: Font.Light
            color: "white"
            font.pointSize: 22
        }
        Label {
            id: label2
            x: 746
            y: 201
            width: 247
            height: 79
            text: qsTr("OKEY SCORE")
            color: "white"
            font.pointSize: 22
        }

        Label {
            id: label3
            x: 400
            y: 201
            width: 247
            height: 79
            text: qsTr("LUDO SCORE")
            color: "white"
            font.pointSize: 22
        }
        RoundButton {
                    id: button
                    x: 1501
                    y: 492
                    width: 331
                    height: 97
                    text: "Exit"
                    font.pointSize: 27

                    onClicked : {
                        pageLoader.source = "Game_Choose_Screen.qml";
                    }


        }

                Label {
                    id: label4
                    x: 1061
                    y: 201
                    width: 247
                    height: 79
                    color: "#ffffff"
                    text: qsTr("TOTAL SCORE")
                    font.pointSize: 22
                }
    }
}

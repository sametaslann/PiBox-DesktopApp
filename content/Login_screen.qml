
import QtQuick 2.15
import QtQuick.Controls 2.15

//import "/Users/e.kabalci2018/Desktop/Desktop-main/Desktop-main/src/main.h"
import QtQuick3D 6.5

Item {
    id: loginpage
    width: 1920
    height: 1080

    Image {
        id: oIG
        x: 0
        y: 0
        width: 1920
        height: 1080
        source: "images/background.jpg"
        scale: 1
        transformOrigin: Item.Center
        fillMode: Image.Stretch

        Text {
            id: text1
            x: 714
            y: 221
            width: 202
            height: 43
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Script MT Bold'; font-size:72pt;\">PiPlayBox</span></p></body></html>"
            font.pixelSize: 120
            textFormat: Text.RichText
        }

        TextField {
            id: username
            x: 786
            y: 432
            width: 315
            height: 78
            color: "#060606"
            focus: true

            placeholderTextColor: "#878787"
            font.pointSize: 15
            placeholderText: qsTr("Username")

            // Wrap the TextField in a Rectangle to add a border radius
            background: Rectangle {
                radius: 20
                border.color: "#C9C9C9"
                border.width: 1
            }
        }


        TextField {
            id: password

            x: 786
            y: 550
            width: 315
            height: 78
            color: "#060606"
            echoMode: TextInput.Password

            placeholderTextColor: "#878787"
            font.pointSize: 15

            placeholderText: qsTr("Password")

            Keys.onReturnPressed: {
                // Handle Enter key press
                loginButton.click(null);
            }

            // Wrap the TextField in a Rectangle to add a border radius
            background: Rectangle {
                radius: 20
                border.color: "#C9C9C9"
                border.width: 1
            }
        }
        Loader {
            id: pageLoader
        }
        Popup {
            id: popup
            width: 300
            height: 200
            modal: true
            focus: true
            closePolicy: Popup.CloseOnEscape

            // Ekranın boyutlarına bağlı olarak x ve y koordinatlarını hesapla
            x: (parent.width - width) / 2
            y: parent.height - height

            Column {
                anchors.fill: parent
                spacing: 10

                Label {
                    text: "Username or Password is wrong"
                    // Diğer label özellikleri
                }

                Button {
                    text: "Close"
                    anchors.horizontalCenter: parent.horizontalCenter
                    onClicked: popup.close()
                }
            }
        }


        RoundButton {
            id: loginButton
            x: 886
            y: 714
            width: 149
            height: 88
            text: "Login"

            font.pointSize: 17

            anchors.fill: parent
            anchors.rightMargin: 819
            anchors.bottomMargin: 291
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: -28
            anchors.leftMargin: 786
            anchors.topMargin: 711

            anchors.centerIn: parent

            background: Rectangle {
                            radius: 20
                            border.color: "#C9C9C9"
                            border.width: 1
                            color: "#bbdde5"

                        }
            onClicked: {
                const res = socket_comm.login_request(username.text, password.text);

                if(res)
                {
                    mainLoader.source = "qrc:/qt/qml/content/Game_Choose_Screen.qml"
                    //Qt.createComponent("Game_Choose_Screen.qml").createObject(parent)
                    socket_comm.getLobbies();
                }
                else{
                    popup.open()
                }



            }
        }

        Rectangle{
            width: parent.width
            height: parent.height
            opacity: 0.534
            visible: !socket_comm.isConnectedSuccesfully




            Item { // square
                id: square

                anchors.centerIn: parent
                property double minimum: Math.min(root.width, root.height)
                width: 100;  height: 100
                opacity: 1

                Repeater {
                    id: repeater

                    model: 8

                    delegate: Rectangle{
                        color: 'black'

                        property double b: 0.1
                        property double a: 0.25

                        width: ((b - a) / repeater.count * index + a) * square.height;  height: width
                        radius: 0.5 * height

                        x: 0.5 * square.width  + 0.5 * (square.width  - width )  * Math.cos(2 * Math.PI / repeater.count * index) - 0.5 * width
                        y: 0.5 * square.height - 0.5 * (square.height - height)  * Math.sin(2 * Math.PI / repeater.count * index) - 0.5 * height
                    }
                }
            }

            Timer {
                interval: 10
                running: true
                repeat:  true

                onTriggered: square.rotation += 2 // degrees
            }

        }


    }
}


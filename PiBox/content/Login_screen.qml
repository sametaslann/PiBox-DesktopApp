import QtQuick 2.15
import QtQuick.Controls 2.15
//import "/Users/e.kabalci2018/Desktop/Desktop-main/Desktop-main/src/main.h"

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
        source: "images/OIG.jpeg"
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
            placeholderText: qsTr("Username")
        }

        TextField {
            id: password
            x: 786
            y: 574
            width: 315
            height: 78
            visible: true
            clip: false
            placeholderText: qsTr("Password")
        }
        Loader {
            id: pageLoader
        }
        Button {
            id: button
            x: 886
            y: 714
            width: 149
            height: 88
            text: "Login"
            font.pointSize: 17

            anchors.fill: parent
            anchors.rightMargin: 819
            anchors.bottomMargin: 302
            anchors.leftMargin: 841
            anchors.topMargin: 722

            anchors.centerIn: parent
            onClicked: {
                const res = socket_comm.login_request(username.text, password.text);

                if(res)
                {
                    Qt.createComponent("Game_Choose_Screen.qml").createObject(parent)
                }



            }
        }
    }
}

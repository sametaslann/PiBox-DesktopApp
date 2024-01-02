import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    id:gamechoosepage
    width: 1920
    height: 1080

    Image {
        id: oIG
        x: 0
        y: 0
        width: 1920
        height: 1080
        source: "images/OIG.jpeg"
        fillMode: Image.Stretch
        transformOrigin: Item.Center
        scale: 1

        Image {
            id: image
            x: 316
            y: 252
            width: 486
            height: 536
            source: "images/OIG1.jpeg"
            fillMode: Image.PreserveAspectFit

            Text {
                id: text1
                x: 0
                y: -173
                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:72pt;\">Ludo Game</span></p></body></html>"
                font.pixelSize: 12
                textFormat: Text.RichText
            }

            Button {
                id: button
                x: 246
                y: 644
                width: 248
                height: 84
                text: "View Loby"
                anchors.verticalCenterOffset: 418
                anchors.horizontalCenterOffset: 135
                font.pointSize: 17

                anchors.centerIn: parent
                onClicked : {
                    //socket_comm.start(); // start new thread
                    pageLoader.source = "Ludo_Loby_Screen.qml";
                }
            }
            ComboBox {
                id: comboBox
                x: 0
                y: 564
                width: 486
                height: 68

                model: ListModel {
                                ListElement { text: "Öğe 1" }
                                ListElement { text: "Öğe 2" }
                                ListElement { text: "Öğe 3" }
                            }
            }
            Button {
                id: button3
                x: 0
                y: 644
                width: 248
                height: 84
                text: "Add New Loby"
                anchors.verticalCenterOffset: 418
                anchors.horizontalCenterOffset: -119
                font.pointSize: 17
                visible: false
                anchors.centerIn: parent
                onClicked : {
                    comboBox.model.append({ "text": "Yeni Öğe" })
                    //pageLoader.source = "Ludo_Loby_Screen.qml";


                }
            }


        }
        Loader {
            id: pageLoader
            anchors.fill: parent
            asynchronous: true
            source: "" // Başlangıçta boş bir sayfa yükleyin

            onLoaded: {
                // Eski sayfayı kaldır
                image1.visible = false
                button2.visible = false
                pageLoader.parent.children.remove(pageLoader);

                //pageLoader.parent.children.visible = false


            }
        }
        Image {
            id: image1
            x: 1143
            y: 252
            width: 486
            height: 536
            source: "images/OIG2.jpeg"
            fillMode: Image.PreserveAspectFit

            Text {
                id: text2
                x: 8
                y: -163
                width: 470
                height: 125
                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:72pt;\">Okey Game</span></p></body></html>"
                font.pixelSize: 12
                textFormat: Text.RichText
            }

            Button {
                id: button1
                x: 238
                y: 642
                width: 248
                height: 84
                text: "View Loby"
                anchors.verticalCenterOffset: 416
                anchors.horizontalCenterOffset: 126
                font.pointSize: 17

                anchors.centerIn: parent
                onClicked : {
                    //socket_comm.startOkey();

                    pageLoader.source = "Okey_loby_screen.qml";
                }
            }
            ComboBox {
                id: comboBox1
                x: 0
                y: 564
                width: 486
                height: 68

                model: ListModel {
                                ListElement { text: "Öğe 1" }
                                ListElement { text: "Öğe 2" }
                                ListElement { text: "Öğe 3" }
                            }
            }
            Button {
                id: button4
                x: -9
                y: 642
                width: 248
                height: 84
                text: "Add New Loby"
                anchors.verticalCenterOffset: 416
                anchors.horizontalCenterOffset: -119
                font.pointSize: 17
                visible: false
                anchors.centerIn: parent
                onClicked : {
                    comboBox.model.append({ text: "Yeni Öğe" })
                    //pageLoader.source = "Ludo_Loby_Screen.qml";
                }
            }


        }

        Button {
            id: button2
            x: 66
            y: 70
            text: "Back to Login Page"
            anchors.verticalCenterOffset: -461
            anchors.horizontalCenterOffset: -821

            anchors.centerIn: parent
            onClicked : {
                Qt.createComponent("Login_screen.qml").createObject(parent);
            }
        }
    }

    Item {
        id: __materialLibrary__
    }
}
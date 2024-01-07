/* This file is generated and only relevant for integrating the project into a Qt 6 and cmake based
C++ project. */
import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 1920
    height: 1080
    title: "PiBox Games"

    Loader {
        id: mainLoader
        anchors.fill: parent

        //initialItem: Loader {
            source: "qrc:/qt/qml/content/Login_screen.qml"
        //}
    }
}

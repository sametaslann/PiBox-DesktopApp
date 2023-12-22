import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 1920
    height: 1080
    title: "Selam Ben Elifnur"

    StackView {
        id: stackView
        anchors.fill: parent

        initialItem: Loader {
            source: "content/Login_screen.qml"
        }
    }
}

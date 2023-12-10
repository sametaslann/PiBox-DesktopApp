import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 1920
    height: 1080

    Image {
        id: oIG
        width: 1920
        height: 1080
        source: "images/OIG.jpeg"
        fillMode: Image.Stretch

        Frame {
            id: frame
            x: 378
            y: 157
            width: 830
            height: 529
        }
    }
}

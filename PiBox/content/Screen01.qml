import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick3D 6.5
import PiBox
import Quick3DAssets.Ludo0
import QtQuick3D.Helpers

Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor


    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        acceptedButtons: Qt.AllButtons


        //onClicked: {
            // Your onClick logic here
            //console.log("here");
            //ludoController.movePawn()
       // }
    }


    View3D {
        id: view3D
        anchors.fill: parent

        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        camera: cameraNode
        Node {
            id: originNode
            PerspectiveCamera {
                id: cameraNode
                z: 100
            }
        }

        OrbitCameraController {
            anchors.fill: parent
            origin: originNode
            camera: cameraNode
        }



        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
                x: -0
                y: 168.472
                z: 52.73455
                eulerRotation.z: 0.00002
                eulerRotation.y: -0.00001
                eulerRotation.x: -60.65488
            }

            Ludo0 {
                id: ludo0
            }
        }
    }

    Item {
        id: __materialLibrary__
        DefaultMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            diffuseColor: "#4aee45"
        }
    }

    Text {
        text: qsTr("Hello PiBox")
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 100
        font.family: Constants.font.family
    }
}

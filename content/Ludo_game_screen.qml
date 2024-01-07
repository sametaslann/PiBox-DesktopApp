import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick3D 6.5
import PiBox
import Quick3DAssets.Ludo0
import QtQuick3D.Helpers

Rectangle {
    width: 1293
    height: 898
    color: "transparent"


    View3D {
        id: view3D
        anchors.fill: parent
        anchors.rightMargin: -8
        anchors.bottomMargin: 8
        anchors.leftMargin: 8
        anchors.topMargin: -8

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
                x: -0
                y: 30.378
                eulerRotation.z: 0.00001
                eulerRotation.y: -0
                eulerRotation.x: -20.30178
                z: 121.68396
            }
        }

        OrbitCameraController {
            anchors.fill: parent
            anchors.rightMargin: 64
            anchors.bottomMargin: 16
            anchors.leftMargin: -64
            anchors.topMargin: -16
            origin: originNode
            camera: cameraNode
        }



        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
                x: -0
                y: 170.878
                bakeMode: Light.BakeModeAll
                scope: ludo0
                brightness: 1.5
                z: 5.57966
                eulerRotation.z: 0.00022
                eulerRotation.y: -0.00021
                eulerRotation.x: -87.07966
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


}

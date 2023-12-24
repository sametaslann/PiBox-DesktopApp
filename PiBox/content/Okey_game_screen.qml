import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick3D 6.5
import PiBox
import Quick3DAssets.Okey
import QtQuick3D.Helpers

Rectangle {
    width: Constants.width
    height: Constants.height
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
                x: -0.001
                y: 215.599
                eulerRotation.z: 0.00001
                eulerRotation.y: 0
                eulerRotation.x: -9.37104
                z: 1237.35962
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
                x: 632.65
                y: 251.657
                z: 46.14563
                eulerRotation.z: -40.50273
                eulerRotation.y: 70.19135
                eulerRotation.x: -52.86527
            }

            Okey {
                id: okey
            }

            DirectionalLight {
                id: directionalLight1
                x: -7
                y: 399.918
                z: 612.63611
                eulerRotation.z: 0.00002
                eulerRotation.y: -0.00001
                eulerRotation.x: -60.65488
            }

            DirectionalLight {
                id: directionalLight2
                x: -7
                y: 334.262
                z: -615.35559
                eulerRotation.z: 179.99997
                eulerRotation.y: -179.99997
                eulerRotation.x: -74.55262
            }

            DirectionalLight {
                id: directionalLight3
                x: -634.912
                y: 315.755
                z: -66.9716
                eulerRotation.z: 128.12209
                eulerRotation.y: -125.29564
                eulerRotation.x: -64.44016
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

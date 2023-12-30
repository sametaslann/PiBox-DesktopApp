import QtQuick
import QtQuick3D
import QtQuick3D.Helpers
import QtQuick.Timeline

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
            antialiasingQuality: SceneEnvironment.High
            antialiasingMode: SceneEnvironment.MSAA
        }
        camera: cameraNode
        Node {
            id: originNode
            PerspectiveCamera {
                id: cameraNode
                x: -1.628
                y: 26.036
                eulerRotation.z: 0.00001
                eulerRotation.y: 0
                eulerRotation.x: -4.50541
                z: 97.45062
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
            eulerRotation.z: 0
            eulerRotation.y: 0
            eulerRotation.x: -90
            //Node {
            //id: node
            //scale.z: 10
            //scale.y: 10
            //scale.x: 10

            //}

            Node {
                id: throwns
                x: 0
                y: 5.018
                z: -0
                eulerRotation.z: 90
                eulerRotation.y: -90
                eulerRotation.x: -90



                Model {
                    id: thrown1
                    x: -27.377
                    y: 26.286
                    z: -4.24272
                    source: "#Rectangle"
                    scale.z: 0.03
                    scale.y: 0.03917
                    scale.x: 0.0302
                    materials: material__43_material

                }


                Model {
                    id: thrown2
                    x: -26.2369327545166
                    y: -23.051246643066406
                    z: -0.68475
                    source: "#Rectangle"
                    scale.z: 0.03
                    scale.y: 0.03917
                    scale.x: 0.0302
                    materials: material__43_material

                }

                Model {
                    id: thrown3
                    x: 23.467208862304688
                    y: -17.408266067504883
                    z: -4.519038200378418
                    source: "#Rectangle"
                    scale.z: 0.03
                    scale.y: 0.03917
                    scale.x: 0.0302
                    materials: material__43_material

                }

                Model {
                    id: thrown4
                    x: 23.319265365600586
                    y: 20.62446403503418
                    z: -4.300281047821045
                    source: "#Rectangle"
                    scale.z: 0.03
                    scale.y: 0.03917
                    scale.x: 0.0302
                    materials: material__43_material

                }
            }

            Model {
                id: middle
                x: 0.546051025390625
                y: 2.6752543449401855
                z: -2.2896223068237305
                source: "#Rectangle"
                eulerRotation.z: -0.00045
                eulerRotation.y: -0.00043
                eulerRotation.x: 87.40143
                scale.z: 0.03
                scale.y: 0.03917
                scale.x: 0.0302
                materials: material__43_material

            }


            Node {
                id: __materialLibrary__

                PrincipledMaterial {
                    id: material__43_material
                    objectName: "material__43_material"
                    baseColor: "#adad81"
                }

                PrincipledMaterial {
                    id: material__47_material
                    objectName: "material__47_material"
                    baseColor: "#f72424"
                }

                PrincipledMaterial {
                    id: material__46_material
                    objectName: "material__46_material"
                    baseColor: "#0615d2"
                }

                PrincipledMaterial {
                    id: material__45_material
                    objectName: "material__45_material"
                    baseColor: "#ecb317"
                }

                PrincipledMaterial {
                    id: material__44_material
                    objectName: "material__44_material"
                    baseColor: "#000000"
                }

                PrincipledMaterial {
                    id: material__1006_material
                    baseColorMap: wood
                    objectName: "material__1006_material"
                    baseColor: "#ff808080"

                    Texture {
                        id: wood
                        source: "images/wood.jpg"
                    }

                }

                PrincipledMaterial {
                    id: material__1040_Slot__2_material
                    objectName: "material__1040_Slot__2_material"
                    baseColor: "#ff000000"
                }

                PrincipledMaterial {
                    id: material__1040_Slot__2_material99
                    objectName: "material__1040_Slot__2_material99"
                    baseColor: "#ff000000"
                }

                PrincipledMaterial {
                    id: material__1040_Slot__2_material103
                    objectName: "material__1040_Slot__2_material103"
                    baseColor: "#ff000000"
                }

                PrincipledMaterial {
                    id: material__1040_Slot__2_material191
                    objectName: "material__1040_Slot__2_material191"
                    baseColor: "#ff000000"
                }
            }

            Node{
                id:red_tiles
                x: 0
                y: 0
                z: 0

                Component.onCompleted: {
                    okeyController.redTiles = red_tiles.children
                }

                Model {
                    id: red13_2
                    objectName: R13
                    x: 3.445
                    y: -2.0800323486328125
                    z: 29.39335
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box209.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red12_2
                    objectName: R12
                    x: 1.831
                    y: 19.089
                    z: 42.63709
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box040.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red11_2
                    objectName: R11
                    x: -1.706
                    y: -2.0800323486328125
                    z: 29.39335
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box207.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red10_2
                    objectName: R10
                    x: -1.979
                    y: 0.30108642578125
                    z: -1.04468
                    rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
                    source: "meshes/box206.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red9_2
                    objectName: R9
                    x: -2.071575164794922
                    y: -0.26318359375
                    z: 0.7634716033935547
                    rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
                    source: "meshes/box029.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red8_2
                    objectName: R8
                    x: -1.6224632263183594
                    y: 0.13681793212890625
                    z: -2.2023
                    rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
                    source: "meshes/box198.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red7_2
                    objectName: R7
                    x: -1.9361724853515625
                    y: 0.5028839111328125
                    z: 0.2018265724182129
                    rotation: Qt.quaternion(0.432663, -0.432663, 0.559287, -0.559287)
                    source: "meshes/box199.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red6_2
                    objectName: R6
                    x: 7.957
                    y: 0.235
                    z: 33.3136
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box200.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red5_2
                    objectName: R5
                    x: -1.799
                    y: 8.939
                    z: -0.44353
                    rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
                    source: "meshes/box201.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red4_2
                    objectName: R4
                    x: -3.38
                    y: -8.219
                    z: 0.22477
                    rotation: Qt.quaternion(0.457188, -0.457188, 0.539425, -0.539425)
                    source: "meshes/box202.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red3_2
                    objectName: R3
                    x: -2.2009201049804688
                    y: -0.5127716064453125
                    z: 0.03719758987426758
                    rotation: Qt.quaternion(0.584257, -0.398301, 0.584257, -0.398301)
                    source: "meshes/box203.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red2_2
                    objectName: R2
                    x: -2.1840057373046875
                    y: -0.106
                    z: -1.32607
                    rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
                    source: "meshes/box204.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red1_2
                    objectName: R1
                    x: -1.7031669616699219
                    y: -1.1002922058105469
                    z: -1.38058
                    rotation: Qt.quaternion(0.622495, -0.622495, 0.33541, -0.33541)
                    source: "meshes/box205.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red13_1
                    objectName: R13
                    x: 16.666
                    y: 2.0866127014160156
                    z: 20.86667
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box041.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red12_1
                    objectName: R12
                    x: 0.891
                    y: -2.0800323486328125
                    z: 29.39335
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box208.mesh"
                    eulerRotation.z: -0.64314
                    eulerRotation.y: 1.33085
                    eulerRotation.x: -18.25188
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red11_1
                    objectName: R11
                    x: 12.027
                    y: -0.125762939453125
                    z: 24.87505
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box039.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red10_1
                    objectName: R10
                    x: -18.93
                    y: -0.19949722290039062
                    z: 24.78575
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box038.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {


                    id: red9_1
                    objectName: R9
                    x: -15.893
                    y: -0.19949722290039062
                    z: 24.78575
                    //rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box029.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]

                }

                Model {
                    id: red8_1
                    objectName: R8
                    x: -12.904
                    y: -0.19949722290039062
                    z: 24.78575
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box030.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red7_1
                    objectName: R7
                    x: -9.915
                    y: -0.23827362060546875
                    z: 24.8999
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box031.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red6_1
                    objectName: R6
                    x: -1.731
                    y: 1.982
                    z: 46.59627
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box032.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red5_1
                    objectName: R5
                    x: -1.731
                    y: 4.534
                    z: 46.59627
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box033.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red4_1
                    objectName: R4
                    x: -1.731
                    y: 7.105
                    z: 46.59627
                    source: "meshes/box034.mesh"
                    eulerRotation.y: -0
                    eulerRotation.x: -0
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red3_1
                    objectName: R3

                    x: -1.731
                    y: 9.689
                    z: 46.59627
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box035.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red2_1
                    objectName: R2
                    x: -1.731
                    y: 12.258
                    z: 46.59627
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box036.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                    eulerRotation.z: -89.98897
                    eulerRotation.y: -62.93386
                    eulerRotation.x: 0.02158
                }

                Model {
                    id: red1_1
                    objectName: R1
                    x: -1.731
                    y: 14.829
                    z: 46.59627
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box037.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }
            }

            Node{
                id:blue_tiles
                x: 0
                y: 0
                z: 0

                Component.onCompleted: {
                    okeyController.blueTiles = blue_tiles.children
                }

                Model {
                    id: blue13_2
                    objectName: B13
                    x: 1.942
                    y: -2.336
                    z: -1.38268
                    rotation: Qt.quaternion(0.513054, 0.513055, -0.486596, -0.486595)
                    source: "meshes/box222.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }





                Model {
                    id: blue12_2
                    objectName: B12
                    x: 1.9421195983886719
                    y: -2.339210033416748
                    z: -2.4541854858398438
                    rotation: Qt.quaternion(-0.5, -0.5, 0.5, 0.5)
                    source: "meshes/box221.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue11_2
                    objectName: B11
                    x: 1.989
                    y: -2.358
                    z: -0.95452
                    rotation: Qt.quaternion(-0.5, -0.5, 0.5, 0.5)
                    source: "meshes/box220.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue10_2
                    objectName: B10
                    x: 2.331
                    y: -2.337
                    z: -0.44466
                    rotation: Qt.quaternion(-0.5, -0.5, 0.5, 0.5)
                    source: "meshes/box219.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue9_2
                    objectName: B9
                    x: 2.046
                    y: -2.264
                    z: 0.34334
                    rotation: Qt.quaternion(-0.483769, -0.483769, 0.515721, 0.515721)
                    source: "meshes/box210.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue8_2
                    objectName: B8
                    x: 2.12
                    y: -2.529
                    z: 0.65008
                    rotation: Qt.quaternion(-0.5, -0.5, 0.5, 0.5)
                    source: "meshes/box211.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue7_2
                    objectName: B7
                    x: -2.064
                    y: -19.648
                    z: 46.65701
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box212.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue6_2
                    objectName: B6
                    x: -0.2125701904296875
                    y: 1.093
                    z: 32.02631
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box046.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue5_2
                    objectName: B5
                    x: -0.2125701904296875
                    y: -1.896
                    z: 32.02631
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box047.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue4_2
                    objectName: B4
                    x: -14.619
                    y: 0.361
                    z: 33.24143
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box215.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue3_2
                    objectName: B3
                    x: 2.177
                    y: -5.948
                    z: 42.66562
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box049.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue2_2
                    objectName: B2
                    x: -0.212066650390625
                    y: -18.61
                    z: 31.89041
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box050.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }


                Model {
                    id: blue1_2
                    objectName: B1
                    x: -2.064
                    y: -14.187
                    z: 46.65701
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box218.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }










                Model {
                    id: blue13_1
                    objectName: B13
                    x: 11.132
                    y: 2.26190185546875
                    z: 20.92621
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box055.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }
                Model {
                    id: blue12_1
                    objectName: B12
                    x: 1.824
                    y: 13.395
                    z: 42.56289
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box054.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue11_1
                    objectName: B11
                    x: 0.304
                    y: -19.281
                    z: 50.57509
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box053.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue10_1
                    objectName: B10
                    x: 0.304
                    y: -16.756
                    z: 50.57509
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box052.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue9_1
                    objectName: B9
                    x: 0.304
                    y: -14.071
                    z: 50.57509
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box043.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue8_1
                    objectName: B8
                    x: 0.304
                    y: -11.379
                    z: 50.57509
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box044.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue7_1
                    objectName: B7
                    x: -18.933
                    y: 2.114
                    z: 21.4006
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box045.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue6_1
                    objectName: B6
                    x: 0.328
                    y: 0.174
                    z: 33.34115
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box213.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue5_1
                    objectName: B5
                    x: -12.005
                    y: 0.359
                    z: 33.26247
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box214.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue4_1
                    objectName: B4
                    x: -16.304
                    y: 2.114
                    z: 21.4006
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box048.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue3_1
                    objectName: B3
                    x: -2.055
                    y: -16.99
                    z: 46.68192
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box216.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue2_1
                    objectName: B2
                    x: -17.288
                    y: 0.339
                    z: 33.22096
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box217.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue1_1
                    objectName: B1
                    x: -13.499
                    y: 2.114
                    z: 21.4006
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box051.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }
            }

            Node{
                id:black_tiles
                x: 0
                y: 0
                z: 0
                Component.onCompleted: {
                    okeyController.blackTiles = black_tiles.children
                }
                Model {
                    id: black13_2
                    objectName: K13
                    x: -0.197
                    y: -9.188
                    z: 31.93985
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box025.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black12_2
                    objectName: K12
                    x: 1.868
                    y: 16.262
                    z: 42.57914
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box024.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black11_2
                    objectName: K11
                    x: -0.45388031005859375
                    y: 19.203
                    z: 31.78114
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box023.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black10_2
                    objectName: K10
                    x: -0.4619598388671875
                    y: 16.605
                    z: 31.8031
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box022.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black9_2
                    objectName: K9
                    x: -0.45388031005859375
                    y: 13.963
                    z: 31.78114
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box013.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black8_2
                    objectName: K8
                    x: -0.45388031005859375
                    y: 11.235
                    z: 31.78114
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box014.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black7_2
                    objectName: K7
                    x: 0.152
                    y: 0.716
                    z: 50.65482
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box186.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black6_2
                    objectName: K6
                    x: 2.86
                    y: 0.204
                    z: 33.32595
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box187.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black5_2
                    objectName: K5
                    x: 14.331
                    y: 0.329
                    z: 33.41193
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box188.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black4_2
                    objectName: K4
                    x: 1.979705810546875
                    y: -11.303
                    z: 27.92514
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box018.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black3_2
                    objectName: K3
                    x: 1.979705810546875
                    y: -13.854
                    z: 27.92514
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box019.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black2_2
                    objectName: K2
                    x: 1.979705810546875
                    y: -16.465
                    z: 27.92513
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box020.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black1_2
                    objectName: K1
                    x: 1.979705810546875
                    y: -19.029
                    z: 27.92513
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box021.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black13_1
                    objectName: K13
                    x: 19.279
                    y: 4.001
                    z: 10.84257
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box196.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black12_1
                    objectName: K12
                    x: 16.716
                    y: -2.1383819580078125
                    z: 29.44992
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box195.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black11_1
                    objectName: K11
                    x: 14.095
                    y: -2.138
                    z: 29.44992
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box194.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black10_1
                    objectName: K10
                    x: 11.393
                    y: -2.138
                    z: 29.44992
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box193.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black9_1
                    objectName: K9
                    x: 2.409
                    y: -4.699
                    z: 57.29129
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box184.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black8_1
                    objectName: K8
                    x: 0.152
                    y: -1.952
                    z: 50.65482
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box185.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black7_1
                    objectName: K7
                    x: -2.31
                    y: -0.32831573486328125
                    z: 25.02201
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box015.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black6_1
                    objectName: K6
                    x: 0.679
                    y: -0.32831573486328125
                    z: 25.02201
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box016.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black5_1
                    objectName: K5
                    x: 3.668
                    y: -0.32831573486328125
                    z: 25.02201
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box017.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black4_1
                    objectName: K4
                    x: 0.273
                    y: 10.051
                    z: 50.5834
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box189.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black3_1
                    objectName: K3
                    x: 0.273
                    y: 12.672
                    z: 50.5834
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box190.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black2_1
                    objectName: K2
                    x: 0.273
                    y: 15.258
                    z: 50.5834
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box191.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black1_1
                    objectName: K1
                    x: 0.273
                    y: 17.86
                    z: 50.5834
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box192.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }
            }

            Node{
                id:yellow_tiles
                x: 0
                y: 0
                z: 0

                Component.onCompleted: {
                    okeyController.yellowTiles = yellow_tiles.children
                }


                Model {
                    id: yellow13_2
                    objectName: Y13
                    x: 1.942
                    y: -2.397538661956787
                    z: 0.92153
                    rotation: Qt.quaternion(-0.5, -0.5, 0.5, 0.5)
                    source: "meshes/box235.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }
                Model {
                    id: yellow12_2
                    objectName: Y12
                    x: 1.942
                    y: -2.528
                    z: 2.2375
                    rotation: Qt.quaternion(-0.5, -0.5, 0.5, 0.5)
                    source: "meshes/box234.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow11_2
                    objectName: Y11
                    x: 1.942
                    y: -2.540078639984131
                    z: 1.43091
                    rotation: Qt.quaternion(-0.5, -0.5, 0.5, 0.5)
                    source: "meshes/box233.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow10_2
                    objectName: Y10
                    x: -9.943
                    y: -2.0320587158203125
                    z: 29.35654
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box232.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow9_2
                    objectName: Y9
                    x: -12.647
                    y: -2.0320587158203125
                    z: 29.35654
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box223.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow8_2
                    objectName: Y8
                    x: -15.338
                    y: -2.0320587158203125
                    z: 29.35654
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box224.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow7_2
                    objectName: Y7
                    x: -18.056
                    y: -2.0320587158203125
                    z: 29.35654
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box225.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow6_2
                    objectName: Y6
                    x: 5.37
                    y: 0.222
                    z: 33.34837
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box226.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow5_2
                    objectName: Y5
                    x: 2.161
                    y: -0.675
                    z: 42.66856
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box061.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow4_2
                    objectName: Y4
                    x: 7.92
                    y: -2.023
                    z: 2.50079
                    source: "meshes/box228.mesh"
                    eulerRotation.z: 138.29436
                    eulerRotation.y: -90.00008
                    eulerRotation.x: 4.03977
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }


                Model {
                    id: yellow3_2
                    objectName: Y3
                    x: 2.089
                    y: -2.6762328147888184
                    z: 3.22945
                    rotation: Qt.quaternion(-0.5, -0.5, 0.5, 0.5)
                    source: "meshes/box229.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow2_2
                    objectName: Y2
                    x: 1.729
                    y: -2.3517050743103027
                    z: 3.69477
                    rotation: Qt.quaternion(-0.5, -0.5, 0.5, 0.5)
                    source: "meshes/box230.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow1_2
                    objectName: Y1
                    x: -1.7289924621582031
                    y: 2.7118306159973145
                    z: -2.4541854858398438
                    rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
                    source: "meshes/box231.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow13_1
                    objectName: Y13
                    x: 13.86
                    y: 2.25341796875
                    z: 20.92333
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box069.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }


                Model {
                    id: yellow12_1
                    objectName: Y12
                    x: 1.795
                    y: 10.665
                    z: 42.60069
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box068.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow11_1
                    objectName: Y11
                    x: -2.038
                    y: -6.641
                    z: 46.49592
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box067.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow10_1
                    objectName: Y10
                    x: -10.149
                    y: 1.9170074462890625
                    z: 20.9711
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box066.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow9_1
                    objectName: Y9
                    x: -7.586
                    y: 1.9170074462890625
                    z: 20.9711
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box057.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow8_1
                    objectName: Y8
                    x: -4.939
                    y: 1.9170074462890625
                    z: 20.9711
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box058.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow7_1
                    objectName: Y7
                    x: -2.31
                    y: 1.9170074462890625
                    z: 20.9711
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box059.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow6_1
                    objectName: Y6
                    x: 0.23
                    y: 1.9170074462890625
                    z: 20.9711
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box060.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow5_1
                    objectName: Y5
                    x: -2.1
                    y: -3.826
                    z: 46.50729
                    rotation: Qt.quaternion(0.696898, -0.119721, 0.119721, -0.696898)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box227.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow4_1
                    objectName: Y4
                    x: 2.148
                    y: -3.29
                    z: 42.65721
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box062.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow3_1
                    objectName: Y3
                    x: 14.582
                    y: -0.22174835205078125
                    z: 24.84244
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box063.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow2_1
                    objectName: Y2
                    x: -0.08087158203125
                    y: -16.056
                    z: 31.93884
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box064.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow1_1
                    objectName: Y1
                    x: 17.34
                    y: -0.22174835205078125
                    z: 24.84244
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box065.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }
            }
            Node{
                id:fake_tiles
                x: 0
                y: 0
                z: 0

                Component.onCompleted: {
                    okeyController.fakeTiles = fake_tiles.children
                }

                Model {
                    id: fake_2
                    objectName: F
                    x: -0.0864105224609375
                    y: -6.348
                    z: 31.98071
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box027.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: fake_1 // f0_1
                    objectName: F
                    x: -2.191
                    y: -9.541
                    z: 46.68422
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box042.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

            }
            Node{
                id: players
                x: 0
                y: 0
                z: 0


                Node {
                    id: player1
                    x: 0
                    y: 0
                    visible: true
                    z: 0
                    Model {
                        id: player1_board
                        x: 0
                        y: 36.976
                        z: -3.57119

                        rotation: Qt.quaternion(4.37114e-08, 0, 0, 1)
                        source: "meshes/box127.mesh"
                        materials: [
                            material__1006_material,
                            material__43_material,
                            material__1040_Slot__2_material
                        ]
                    }
                    Node
                    {
                        id: player1_cells
                        visible: false
                        Component.onCompleted: {
                            okeyController.player1Cells = player1_cells.children
                        }

                        Model {
                            id: p1_cell1
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 17.637
                            y: 37.154
                            z: 2.78881
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell2
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 14.808
                            y: 37.166
                            z: 2.78783
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell3
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 12.027
                            y: 37.178
                            z: 2.78521
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell4
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 9.34
                            y: 37.189
                            z: 2.7836
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637

                        }

                        Model {
                            id: p1_cell5
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 6.689
                            y: 37.184
                            z: 2.82409
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell6
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 4.12
                            y: 37.209
                            z: 2.78187
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell7
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 1.535
                            y: 37.224
                            z: 2.76958
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell8
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -1.027
                            y: 37.25
                            z: 2.7266
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell9
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -3.602
                            y: 37.275
                            z: 2.68383
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell10
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -6.257
                            y: 37.272
                            z: 2.72206
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell11
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -8.931
                            y: 37.268
                            z: 2.7597
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell12
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -11.49
                            y: 37.293
                            z: 2.71711
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell13
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -14.162
                            y: 37.276
                            z: 2.79453
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell14
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -16.682
                            y: 37.272
                            z: 2.83168
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell15
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -19.381
                            y: 37.265
                            z: 2.87993
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell16
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 18.565
                            y: 39.457
                            z: -1.38996
                            eulerRotation.z: 179.74637
                            eulerRotation.y: -0.12906
                            eulerRotation.x: 21.68817
                        }

                        Model {
                            id: p1_cell17
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 15.856
                            y: 39.387
                            z: -1.43878
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell18
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 13.11
                            y: 39.422
                            z: -1.50496
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell19
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 10.418
                            y: 39.408
                            z: -1.44237
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell20
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 7.787
                            y: 39.464
                            z: -1.42795
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell21
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 5.129
                            y: 39.366
                            z: -1.46765
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell22
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 2.485
                            y: 39.379
                            z: -1.47804
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell23
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -0.145
                            y: 39.428
                            z: -1.58188
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell24
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -2.844
                            y: 39.395
                            z: -1.4634
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell25
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -5.476
                            y: 39.391
                            z: -1.42345
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell26
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -8.049
                            y: 39.413
                            z: -1.45813
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell27
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -10.682
                            y: 39.431
                            z: -1.47779
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell28
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -13.454
                            y: 39.444
                            z: -1.48451
                            eulerRotation.z: 179.74966
                            eulerRotation.y: -0.12144
                            eulerRotation.x: 20.08638
                        }



                        Model {
                            id: p1_cell29
                            x: -16.285
                            y: 39.456
                            source: "meshes/box038.mesh"
                            z: -1.48683
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }

                        Model {
                            id: p1_cell30
                            x: -19.425
                            y: 39.469
                            source: "meshes/box038.mesh"
                            z: -1.4882
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                                        material__47_material
                                                    ]
                            eulerRotation.z: 179.74937
                            eulerRotation.y: -0.12148
                            eulerRotation.x: 20.08637
                        }
                    }

                }
                Node {
                    id: player2
                    x: 0
                    y: 0
                    z: 0
                    Model {
                        id: player2_board
                        x: -41.656
                        y: 0
                        z: -5
                        rotation: Qt.quaternion(0.707107, 0, 0, -0.707107)
                        source: "meshes/box129.mesh"
                        materials: [
                            material__1006_material,
                            material__43_material,
                            material__1040_Slot__2_material191
                        ]
                    }
                    Node{
                        id: player2_cells
                        x:0
                        y:0
                        visible: false
                        z:0
                        Component.onCompleted: {
                            okeyController.player2Cells = player2_cells.children
                        }

                        Model {
                            id: p2_cell1
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -41.302
                            y: 18.587
                            z: 1.23954
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell2
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -41.302
                            y: 15.758
                            z: 1.23979
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell3
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -41.303
                            y: 12.977
                            z: 1.23837
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell4
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -41.303
                            y: 10.29
                            z: 1.23793
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063

                        }

                        Model {
                            id: p2_cell5
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -41.288
                            y: 7.639
                            z: 1.27979
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell6
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -41.302
                            y: 5.07
                            z: 1.23849
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell7
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -41.306
                            y: 2.485
                            z: 1.22726
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell8
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -41.321
                            y: -0.077
                            z: 1.18519
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell9
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -41.335
                            y: -2.652
                            z: 1.14334
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell10
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -41.322
                            y: -5.307
                            z: 1.18291
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell11
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -41.308
                            y: -7.981
                            z: 1.22191
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell12
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -41.322
                            y: -10.541
                            z: 1.18024
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell13
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -41.295
                            y: -13.213
                            z: 1.2592
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell14
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -41.281
                            y: -15.732
                            z: 1.29765
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell15
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -41.264
                            y: -18.431
                            z: 1.34732
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell16
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -43.972
                            y: 19.105
                            z: -2.69969
                            eulerRotation.z: -89.99824
                            eulerRotation.y: 20.88774
                            eulerRotation.x: 0.01059
                        }

                        Model {
                            id: p2_cell17
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -43.403
                            y: 16.796
                            z: -3.0407
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell18
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -43.426
                            y: 14.049
                            z: -3.10607
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell19
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -43.403
                            y: 11.357
                            z: -3.04178
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell20
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -43.404
                            y: 8.726
                            z: -3.04241
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell21
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -43.403
                            y: 6.068
                            z: -3.04128
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell22
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -43.406
                            y: 3.424
                            z: -3.05056
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell23
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -43.442
                            y: 0.794
                            z: -3.15377
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell24
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -43.4
                            y: -1.905
                            z: -3.03351
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell25
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -43.386
                            y: -4.536
                            z: -2.99222
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell26
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -43.397
                            y: -7.11
                            z: -3.02594
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell27
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -43.404
                            y: -9.743
                            z: -3.04455
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell28
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: -43.406
                            y: -12.515
                            z: -3.05009
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }



                        Model {
                            id: p2_cell29
                            x: -43.406
                            y: -15.346
                            source: "meshes/box038.mesh"
                            z: -3.05061
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }

                        Model {
                            id: p2_cell30
                            x: -43.406
                            y: -18.485
                            source: "meshes/box038.mesh"
                            z: -3.05118
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                                        material__47_material
                                                    ]
                            eulerRotation.z: -89.99853
                            eulerRotation.y: 19.28593
                            eulerRotation.x: 0.01063
                        }
                    }
                }
                Node {
                    id: player3
                    x: 0
                    y: 0
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 0
                    z: 0


                    Model {
                        id: player3_board
                        x: 0
                        y: -38.239
                        z: -4.8592
                        source: "meshes/box001.mesh"
                        eulerRotation.z: 0.00066
                        eulerRotation.y: -0.00064
                        eulerRotation.x: -.21097
                        materials: [
                            material__1006_material,
                            material__43_material,
                            material__1040_Slot__2_material103
                        ]
                     }

                        Node{
                            id: player3_cells
                            visible: false

                            Component.onCompleted: {
                                okeyController.player3Cells = player3_cells.children
                            }
                            Model {
                                id: p3_cell1
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: -17.984
                                y: -37.851
                                z: 1.23953
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell2
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: -15.155
                                y: -37.857
                                z: 1.23978
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell3
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: -12.374
                                y: -37.864
                                z: 1.23837
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell4
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: -9.687
                                y: -37.87
                                z: 1.23793
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586

                            }

                            Model {
                                id: p3_cell5
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: -7.036
                                y: -37.86
                                z: 1.27979
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell6
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: -4.467
                                y: -37.88
                                z: 1.23849
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell7
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: -1.882
                                y: -37.889
                                z: 1.22726
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell8
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: 0.68
                                y: -37.909
                                z: 1.1852
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell9
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: 3.255
                                y: -37.929
                                z: 1.14335
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell10
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: 5.91
                                y: -37.921
                                z: 1.18292
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell11
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: 8.584
                                y: -37.913
                                z: 1.22192
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell12
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: 11.144
                                y: -37.932
                                z: 1.18025
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell13
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: 13.816
                                y: -37.911
                                z: 1.25922
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell14
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: 16.335
                                y: -37.902
                                z: 1.29767
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell15
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: 19.034
                                y: -37.891
                                z: 1.34734
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell16
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: -18.507
                                y: -40.52
                                z: -2.6997
                                eulerRotation.z: -0.12994
                                eulerRotation.y: 0.0568
                                eulerRotation.x: -20.88767
                            }

                            Model {
                                id: p3_cell17
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: -16.197
                                y: -39.956
                                z: -3.04071
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell18
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: -13.45
                                y: -39.985
                                z: -3.10608
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell19
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: -10.758
                                y: -39.968
                                z: -3.04178
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell20
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: -8.127
                                y: -39.974
                                z: -3.04241
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell21
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: -5.469
                                y: -39.979
                                z: -3.04128
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell22
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: -2.825
                                y: -39.987
                                z: -3.05056
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell23
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: -0.195
                                y: -40.029
                                z: -3.15377
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell24
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: 2.504
                                y: -39.992
                                z: -3.0335
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell25
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: 5.135
                                y: -39.984
                                z: -2.99221
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell26
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: 7.709
                                y: -40
                                z: -3.02593
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell27
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: 10.342
                                y: -40.012
                                z: -3.04454
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell28
                                source: "meshes/box038.mesh"
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                x: 13.114
                                y: -40.02
                                z: -3.05008
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }



                            Model {
                                id: p3_cell29
                                x: 15.945
                                y: -40.026
                                source: "meshes/box038.mesh"
                                z: -3.05059
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                    material__47_material
                                ]
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }

                            Model {
                                id: p3_cell30
                                x: 19.084
                                y: -40.033
                                source: "meshes/box038.mesh"
                                z: -3.05116
                                scale.z: 1
                                scale.y: 1
                                scale.x: 1
                                materials: [
                                                            material__47_material
                                                        ]
                                eulerRotation.z: -0.1286
                                eulerRotation.y: 0.05295
                                eulerRotation.x: -19.28586
                            }
                        }
                    }

                Node {
                    id: player4
                    x: 0
                    y: 0
                    z: 0


                    Model {
                        id: player4_board
                        x: 42.054
                        y: -0
                        visible: true
                        z: -5.18596
                        rotation: Qt.quaternion(0.707107, 0, 0, 0.707107)
                        source: "meshes/box128.mesh"
                        materials: [
                            material__1006_material,
                            material__43_material,
                            material__1040_Slot__2_material99
                        ]

                    }
                    Node{
                        id: player4_cells
                        visible: false

                        Component.onCompleted: {
                            okeyController.player4Cells = player4_cells.children
                        }

                        Model {
                            id: p4_cell1
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 41.734
                            y: -17.949
                            z: 1.23952
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell2
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 41.737
                            y: -15.12
                            z: 1.23978
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell3
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 41.74
                            y: -12.339
                            z: 1.23836
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell4
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 41.742
                            y: -9.652
                            z: 1.23792
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518

                        }

                        Model {
                            id: p4_cell5
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 41.729
                            y: -7.001
                            z: 1.27978
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell6
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 41.745
                            y: -4.432
                            z: 1.23849
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell7
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 41.751
                            y: -1.847
                            z: 1.22726
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell8
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 41.768
                            y: 0.715
                            z: 1.18519
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell9
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 41.784
                            y: 3.29
                            z: 1.14334
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell10
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 41.773
                            y: 5.945
                            z: 1.18292
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell11
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 41.761
                            y: 8.619
                            z: 1.22192
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell12
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 41.777
                            y: 11.179
                            z: 1.18025
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell13
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 41.752
                            y: 13.851
                            z: 1.25921
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell14
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 41.74
                            y: 16.37
                            z: 1.29766
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell15
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 41.725
                            y: 19.069
                            z: 1.34734
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell16
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 44.404
                            y: -18.469
                            z: -2.69971
                            eulerRotation.z: 89.96043
                            eulerRotation.y: -20.88773
                            eulerRotation.x: -0.02631
                        }

                        Model {
                            id: p4_cell17
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 43.837
                            y: -16.16
                            z: -3.04071
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell18
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 43.862
                            y: -13.413
                            z: -3.10608
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell19
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 43.841
                            y: -10.721
                            z: -3.04179
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell20
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 43.844
                            y: -8.09
                            z: -3.04242
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell21
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 43.845
                            y: -5.432
                            z: -3.04129
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell22
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 43.85
                            y: -2.788
                            z: -3.05056
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell23
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 43.888
                            y: -0.158
                            z: -3.15377
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell24
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 43.848
                            y: 2.541
                            z: -3.03351
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell25
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 43.836
                            y: 5.172
                            z: -2.99222
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell26
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 43.849
                            y: 7.746
                            z: -3.02593
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell27
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 43.858
                            y: 10.379
                            z: -3.04454
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell28
                            source: "meshes/box038.mesh"
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            x: 43.862
                            y: 13.151
                            z: -3.05008
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }



                        Model {
                            id: p4_cell29
                            x: 43.865
                            y: 15.982
                            source: "meshes/box038.mesh"
                            z: -3.0506
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                material__47_material
                            ]
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }

                        Model {
                            id: p4_cell30
                            x: 43.867
                            y: 19.121
                            source: "meshes/box038.mesh"
                            z: -3.05116
                            scale.z: 1
                            scale.y: 1
                            scale.x: 1
                            materials: [
                                                        material__47_material
                                                    ]
                            eulerRotation.z: 89.95972
                            eulerRotation.y: -19.28592
                            eulerRotation.x: -0.02518
                        }
                    }
                }
            }


    }


        DirectionalLight {
            id: directionalLight2
            x: -4
            y: 903.238
            z: 1122.3479
            eulerRotation.z: 0.00001
            eulerRotation.y: -0.00001
            eulerRotation.x: -62.28382
        }

        DirectionalLight {
            id: directionalLight3
            x: -143.434
            y: 706.918
            z: -1033.84485
            eulerRotation.z: 121.91115
            eulerRotation.y: 160.63445
            eulerRotation.x: -27.09429
        }
        DirectionalLight {
            id: directionalLight1
            x: 780.197
            y: 1070.734
            z: 0
            eulerRotation.z: -87.26819
            eulerRotation.y: 87.98039
            eulerRotation.x: -47.64975
        }
        DirectionalLight {
            id: directionalLight
            x: -889.202
            y: 1070.734
            eulerRotation.z: 87.91602
            eulerRotation.y: -89.02125
            eulerRotation.x: -28.00166
            z: 30.54141
        }
    }
    Component.onCompleted: {
        socket_comm.startOkey();
    }
}



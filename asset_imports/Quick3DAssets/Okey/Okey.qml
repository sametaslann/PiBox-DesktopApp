import QtQuick
import QtQuick3D
import QtQuick3D.Helpers
import QtQuick.Timeline
import Quick3DAssets.Mesa_80cm
import QtQuick.Controls 6.5
import QtQuick.Layouts
import QtQuick.Studio.Components


Rectangle {
    width: 1305
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
            antialiasingQuality: SceneEnvironment.High
            antialiasingMode: SceneEnvironment.MSAA
        }
        camera: cameraNode
        Node {
            id: originNode
            PerspectiveCamera {
                id: cameraNode

                x: 3.724
                y: 20.755

                z: 105.93619
                eulerRotation.y: 0
                eulerRotation.x: -20

            }
        }

        OrbitCameraController {
            anchors.fill: parent
            anchors.rightMargin: 192
            anchors.bottomMargin: 449
            anchors.leftMargin: -192
            anchors.topMargin: -449
            origin: originNode
            camera: cameraNode
        }


        Node {
            id: scene
            eulerRotation.z: 0
            eulerRotation.y: 0
            eulerRotation.x: -90

            Node {
                id: throwns
                x: 0
                y: 0
                visible: false
                z: 0

                Component.onCompleted: {
                    okeyController.throwns = throwns.children
                }

                Model {
                    id: p1_thrown1
                    x: -27.369
                    y: 28.332
                    z: -3.99405
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 173.03003
                    eulerRotation.y: -7.00143
                    eulerRotation.x: 88.05992
                }
                Model {
                    id: p2_thrown1
                    x: -27.623
                    y: -25.231
                    z: -3.99407
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -89.84178
                    eulerRotation.y: 88.07047
                    eulerRotation.x: -3.6456
                }

                Model {
                    id: p3_thrown1
                    x: 26.513
                    y: -25.153
                    z: -3.99408
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -65.0052
                    eulerRotation.y: 64.97123
                    eulerRotation.x: -85.44461
                }

                Model {
                    id: p4_thrown1
                    x: 29.529
                    y: 21.46
                    z: -3.99407
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 90.17646
                    eulerRotation.y: -88.06929
                    eulerRotation.x: 4.18754
                }

                Model {
                    id: p1_thrown2
                    x: -27.369
                    y: 28.36
                    z: -3.14808
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 99.52756
                    eulerRotation.y: -80.69478
                    eulerRotation.x: 78.28648
                }
                Model {
                    id: p2_thrown2
                    x: -27.659
                    y: -25.233
                    z: -2.92315
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -89.84077
                    eulerRotation.y: 88.1018
                    eulerRotation.x: 7.67518
                }

                Model {
                    id: p3_thrown2
                    x: 26.511
                    y: -25.182
                    z: -3.1275
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -82.81651
                    eulerRotation.y: 82.97401
                    eulerRotation.x: -74.4324
                }

                Model {
                    id: p4_thrown2
                    x: 29.555
                    y: 21.461
                    z: -3.19575
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 90.17725
                    eulerRotation.y: -88.10412
                    eulerRotation.x: -7.13333
                }

                Model {
                    id: p1_thrown3
                    x: -27.37
                    y: 28.37
                    z: -2.84976
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 173.03003
                    eulerRotation.y: -7.00143
                    eulerRotation.x: 88.05992
                }
                Model {
                    id: p2_thrown3
                    x: -27.661
                    y: -25.235
                    z: -2.84978
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -89.84178
                    eulerRotation.y: 88.07047
                    eulerRotation.x: -3.6456
                }

                Model {
                    id: p3_thrown3
                    x: 26.512
                    y: -25.192
                    z: -2.84979
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -65.0052
                    eulerRotation.y: 64.97123
                    eulerRotation.x: -85.44461
                }

                Model {
                    id: p4_thrown3
                    x: 29.567
                    y: 21.464
                    z: -2.84978
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 90.17646
                    eulerRotation.y: -88.06929
                    eulerRotation.x: 4.18754
                }



                Model {
                    id: p1_thrown4
                    x: -27.37
                    y: 28.39
                    z: -2.26333
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -100.85039
                    eulerRotation.y: 79.29238
                    eulerRotation.x: 79.71686
                }
                Model {
                    id: p2_thrown4
                    x: -27.681
                    y: -25.236
                    z: -2.26335
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -89.83732
                    eulerRotation.y: 88.04121
                    eulerRotation.x: -13.98419
                }

                Model {
                    id: p3_thrown4
                    x: 26.51
                    y: -25.211
                    z: -2.26336
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 72.75003
                    eulerRotation.y: -72.9577
                    eulerRotation.x: -83.50179
                }

                Model {
                    id: p4_thrown4
                    x: 29.586
                    y: 21.465
                    z: -2.26335
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 90.18179
                    eulerRotation.y: -88.0365
                    eulerRotation.x: 14.52607
                }

                Model {
                    id: p1_thrown5
                    x: -27.37
                    y: 28.41
                    z: -1.68311
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 173.03003
                    eulerRotation.y: -7.00143
                    eulerRotation.x: 88.05992
                }
                Model {
                    id: p2_thrown5
                    x: -27.701
                    y: -25.237
                    z: -1.68313
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -89.84178
                    eulerRotation.y: 88.07047
                    eulerRotation.x: -3.6456
                }

                Model {
                    id: p3_thrown5
                    x: 26.509
                    y: -25.231
                    z: -1.68314
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -65.0052
                    eulerRotation.y: 64.97123
                    eulerRotation.x: -85.44461
                }

                Model {
                    id: p4_thrown5
                    x: 29.606
                    y: 21.467
                    z: -1.68313
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 90.17646
                    eulerRotation.y: -88.06929
                    eulerRotation.x: 4.18754
                }

                Model {
                    id: p1_thrown6
                    x: -27.37
                    y: 28.427
                    z: -1.17945
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -101.8429
                    eulerRotation.y: 78.285
                    eulerRotation.x: 80.576
                }
                Model {
                    id: p2_thrown6
                    x: -27.718
                    y: -25.238
                    z: -1.17947
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -89.83791
                    eulerRotation.y: 88.04378
                    eulerRotation.x: -13.10796
                }

                Model {
                    id: p3_thrown6
                    x: 26.507
                    y: -25.248
                    z: -1.17948
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 70.13283
                    eulerRotation.y: -70.32576
                    eulerRotation.x: -84.33282
                }

                Model {
                    id: p4_thrown6
                    x: 29.623
                    y: 21.468
                    z: -1.17947
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 90.18106
                    eulerRotation.y: -88.03941
                    eulerRotation.x: 13.64971
                }

                Model {
                    id: p1_thrown7
                    x: -27.371
                    y: 28.447
                    z: -0.57858
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 109.09587
                    eulerRotation.y: -71.02546
                    eulerRotation.x: 84.10432
                }
                Model {
                    id: p2_thrown7
                    x: -27.738
                    y: -25.241
                    z: -0.5786
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -89.84196
                    eulerRotation.y: 88.0852
                    eulerRotation.x: 1.69224
                }

                Model {
                    id: p3_thrown7
                    x: 26.508
                    y: -25.269
                    z: -0.57861
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -78.46287
                    eulerRotation.y: 78.51891
                    eulerRotation.x: -80.34018
                }

                Model {
                    id: p4_thrown7
                    x: 29.644
                    y: 21.472
                    z: -0.5786
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 90.1761
                    eulerRotation.y: -88.08566
                    eulerRotation.x: -1.15031
                }

                Model {
                    id: p1_thrown8
                    x: -27.371
                    y: 28.46
                    z: -0.18802
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -100.09921
                    eulerRotation.y: 80.05665
                    eulerRotation.x: 78.95162
                }
                Model {
                    id: p2_thrown8
                    x: -27.751
                    y: -25.242
                    z: -0.18804
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -89.83665
                    eulerRotation.y: 88.0389
                    eulerRotation.x: -14.76237
                }

                Model {
                    id: p3_thrown8
                    x: 26.507
                    y: -25.282
                    z: -0.18805
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 74.56696
                    eulerRotation.y: -74.78763
                    eulerRotation.x: -82.75502
                }

                Model {
                    id: p4_thrown8
                    x: 29.657
                    y: 21.473
                    z: -0.18804
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 90.18255
                    eulerRotation.y: -88.03395
                    eulerRotation.x: 15.30418
                }

                Model {
                    id: p1_thrown9
                    x: -27.371
                    y: 28.478
                    z: 0.3572
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 173.03003
                    eulerRotation.y: -7.00143
                    eulerRotation.x: 88.05992
                }
                Model {
                    id: p2_thrown9
                    x: -27.769
                    y: -25.243
                    z: 0.35719
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -89.84178
                    eulerRotation.y: 88.07047
                    eulerRotation.x: -3.6456
                }

                Model {
                    id: p3_thrown9
                    x: 26.505
                    y: -25.3
                    z: 0.35718
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -65.0052
                    eulerRotation.y: 64.97123
                    eulerRotation.x: -85.44461
                }

                Model {
                    id: p4_thrown9
                    x: 29.675
                    y: 21.473
                    z: 0.35719
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 90.17646
                    eulerRotation.y: -88.06929
                    eulerRotation.x: 4.18754
                }

                Model {
                    id: p1_thrown10
                    x: -27.371
                    y: 28.496
                    z: 0.87487
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 99.17779
                    eulerRotation.y: -81.05232
                    eulerRotation.x: 77.83743
                }

                Model {
                    id: p2_thrown10
                    x: -27.787
                    y: -25.244
                    z: 0.87486
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -89.84054
                    eulerRotation.y: 88.10307
                    eulerRotation.x: 8.13027
                }

                Model {
                    id: p3_thrown10
                    x: 26.504
                    y: -25.318
                    z: 0.87485
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: -83.01484
                    eulerRotation.y: 83.18018
                    eulerRotation.x: -73.9808
                }

                Model {
                    id: p4_thrown10
                    x: 29.693
                    y: 21.475
                    z: 0.87486
                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__47_material
                    ]
                    eulerRotation.z: 90.17751
                    eulerRotation.y: -88.10555
                    eulerRotation.x: -7.5884
                }

            }



            Model {
                id: jokerTile
                x: -6.324
                y: -2.193
                visible: false
                z: -4.31873

                source: "meshes/box038.mesh"
                scale.z: 1
                scale.y: 1
                scale.x: 1
                materials: [

                    material__47_material
                ]
                eulerRotation.z: 47.058
                eulerRotation.y: -47.32208
                eulerRotation.x: -84.30099

                Component.onCompleted: {
                    okeyController.jokerTile = jokerTile
                }
            }



            Node{
                id: middle

                Model {
                    id: middle1
                    x: -0.222
                    y: 1.008
                    z: 0.69642

                    source: "meshes/box038.mesh"
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                    eulerRotation.z: 120.74925
                    eulerRotation.y: 120.43478
                    eulerRotation.x: 85.21795
                }

                Model {
                    id: middle2
                    x: -0.223
                    y: 1.059
                    source: "meshes/box038.mesh"
                    z: 0.28362
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                    eulerRotation.z: 104.14587
                    eulerRotation.y: 102.84973
                    eulerRotation.x: 74.16586
                }

                Model {
                    id: middle3
                    x: -0.222
                    y: 1.11
                    source: "meshes/box038.mesh"
                    z: -0.12648
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                    eulerRotation.z: 149.60075
                    eulerRotation.y: 149.45099
                    eulerRotation.x: 81.86033
                }

                Model {
                    id: middle4
                    x: -0.224
                    y: 1.181
                    source: "meshes/box038.mesh"
                    z: -0.70891
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                    eulerRotation.z: -138.73044
                    eulerRotation.y: -138.246
                    eulerRotation.x: 80.64909
                }

                Model {
                    id: middle5
                    x: -0.225
                    y: 1.253
                    source: "meshes/box038.mesh"
                    z: -1.28507
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                    eulerRotation.z: 149.60075
                    eulerRotation.y: 149.45099
                    eulerRotation.x: 81.86033
                }

                Model {
                    id:middle6
                    x: -0.227
                    y: 1.314
                    source: "meshes/box038.mesh"
                    z: -1.78523
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                    eulerRotation.z: -142.98703
                    eulerRotation.y: -142.55647
                    eulerRotation.x: 81.2027
                }

                Model {
                    id: middle7
                    x: -0.226
                    y: 1.389
                    source: "meshes/box038.mesh"
                    z: -2.38187
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                    eulerRotation.z: 126.76938
                    eulerRotation.y: 126.29113
                    eulerRotation.x: 78.22804
                }

                Model {
                    id: middle8
                    x: -0.227
                    y: 1.436
                    source: "meshes/box038.mesh"
                    z: -2.76973
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                    eulerRotation.z: -135.36829
                    eulerRotation.y: -134.83617
                    eulerRotation.x: 80.11865
                }

                Model {
                    id: middle9
                    x: -0.229
                    y: 1.502
                    source: "meshes/box038.mesh"
                    z: -3.31121
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                    eulerRotation.z: 149.60075
                    eulerRotation.y: 149.45099
                    eulerRotation.x: 81.86033
                }

                Model {
                    id: middle10
                    x: -0.23
                    y: 1.566
                    source: "meshes/box038.mesh"
                    z: -3.82524
                    scale.z: 1
                    scale.y: 1
                    scale.x: 1
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                    eulerRotation.z: 178.65288
                    eulerRotation.y: 178.74681
                    eulerRotation.x: 82.98329
                }

            }

            Node {
                id: __materialLibrary__

                PrincipledMaterial {
                    id: material__43_material
                    attenuationColor: "#050a05"
                    objectName: "material__43_material"
                    baseColor: "#adad81"
                }

                PrincipledMaterial {
                    id: material__47_material
                    attenuationColor: "#f2f6f2"
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
                    id: red1_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box037.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]

                }
                Model {
                    id: red2_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box036.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]

                }

                Model {
                    id: red3_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963


                    source: "meshes/box035.mesh"
                    materials: [
                        material__43_material,

                        material__47_material
                    ]
                }

                Model {

                    id: red4_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963
                    source: "meshes/box034.mesh"

                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red5_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box033.mesh"
                    materials: [
                        material__43_material,

                        material__47_material
                    ]
                }

                Model {

                    id: red6_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box032.mesh"
                    materials: [
                        material__43_material,

                        material__47_material
                    ]
                }

                Model {

                    id: red7_1
                    eulerRotation.z: 90.00129
                    eulerRotation.y: 90.00129
                    eulerRotation.x: 88.17169


                    x: -0.221
                    y: 0.97
                    z: 1.09963

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

                    id: red8_1
                    eulerRotation.z: 90.00027
                    eulerRotation.y: 90.00027
                    eulerRotation.x: 87.14556


                    x: -0.221
                    y: 0.97
                    z: 1.09963

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



                    id: red9_1
                    eulerRotation.z: 89.69262
                    eulerRotation.y: 90.17939
                    eulerRotation.x: 88.78938


                    x: -0.221
                    y: 0.97
                    z: 1.09963

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
                    id: red10_1
                    eulerRotation.z: 90.0013
                    eulerRotation.y: 90.0013
                    eulerRotation.x: 89.10235



                    x: -0.221
                    y: 0.97
                    z: 1.09963

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

                    id: red11_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90



                    x: -0.221
                    y: 0.97
                    z: 1.09963

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

                    id: red12_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90



                    x: -0.221
                    y: 0.97
                    z: 1.09963
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box208.mesh"

                    materials: [
                        material__43_material,

                        material__47_material
                    ]
                }

                Model {

                    id: red13_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90



                    x: -0.221
                    y: 0.97
                    z: 1.09963

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

                    id: red1_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box205.mesh"
                    materials: [
                        material__43_material,

                        material__47_material
                    ]
                }

                Model {

                    id: red2_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box204.mesh"
                    materials: [
                        material__43_material,

                        material__47_material
                    ]
                }

                Model {

                    id: red3_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box203.mesh"
                    materials: [
                        material__43_material,

                        material__47_material
                    ]
                }

                Model {

                    id: red4_2
                    eulerRotation.z: 90.00225
                    eulerRotation.y: 90.00225
                    eulerRotation.x: 88.95733


                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box202.mesh"
                    materials: [
                        material__43_material,

                        material__47_material
                    ]
                }

                Model {

                    id: red5_2
                    eulerRotation.z: 90.00033
                    eulerRotation.y: 90.00017
                    eulerRotation.x: 87.65398


                    x: -0.221
                    y: 0.97
                    z: 1.09963
                    source: "meshes/box201.mesh"

                    materials: [
                        material__43_material,

                        material__47_material
                    ]
                }

                Model {

                    id: red6_2
                    eulerRotation.z: 90.00043
                    eulerRotation.y: 90.00043
                    eulerRotation.x: 87.23997


                    x: -0.221
                    y: 0.97
                    z: 1.09963
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

                    id: red7_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box199.mesh"
                    materials: [
                        material__43_material,

                        material__47_material
                    ]
                }

                Model {

                    id: red8_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963
                    source: "meshes/box198.mesh"
                    materials: [
                        material__43_material,

                        material__47_material
                    ]
                }

                Model {

                    id: red9_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963
                    source: "meshes/box029.mesh"
                    materials: [
                        material__43_material,

                        material__47_material
                    ]
                }

                Model {

                    id: red10_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90



                    x: -0.221
                    y: 0.97
                    z: 1.09963
                    source: "meshes/box206.mesh"
                    materials: [
                        material__43_material,

                        material__47_material
                    ]
                }

                Model {

                    id: red11_2
                    eulerRotation.z: 90.00149
                    eulerRotation.y: 90.00149
                    eulerRotation.x: 88.15231



                    x: -0.221
                    y: 0.97
                    z: 1.09963
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

                    id: red12_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90



                    x: -0.221
                    y: 0.97
                    z: 1.0287

                    source: "meshes/box040.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }

                Model {
                    id: red13_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90



                    x: -0.221
                    y: 0.97
                    z: 1.09963
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    source: "meshes/box209.mesh"
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
                    id: blue1_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0.01683
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

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
                Model {

                    id: blue2_1
                    eulerRotation.z: 90.00417
                    eulerRotation.y: 90.00417
                    eulerRotation.x: 89.62675
                    x: -0.221
                    y: 0.97
                    z: 1.09963

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

                    id: blue3_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box216.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,

                        material__47_material
                    ]
                }

                Model {

                    id: blue4_1
                    eulerRotation.z: 90.00266
                    eulerRotation.y: 90.00266
                    eulerRotation.x: 89.26272
                    x: -0.221
                    y: 0.97
                    z: 1.09963

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

                    id: blue5_1
                    eulerRotation.z: 90.0011
                    eulerRotation.y: 90.0011
                    eulerRotation.x: 89.64336
                    x: -0.221
                    y: 0.97
                    z: 1.09963
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

                    id: blue6_1
                    eulerRotation.z: 90.00607
                    eulerRotation.y: 90.00607
                    eulerRotation.x: 89.67979
                    x: -0.221
                    y: 0.97
                    z: 1.09963
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

                    id: blue7_1
                    eulerRotation.z: 90.00313
                    eulerRotation.y: 90.00313
                    eulerRotation.x: 89.37505
                    x: -0.221
                    y: 0.97
                    z: 1.09963

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

                    id: blue8_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box044.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,

                        material__47_material
                    ]
                }

                Model {

                    id: blue9_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box043.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,

                        material__47_material
                    ]
                }

                Model {

                    id: blue10_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90

                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box052.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,

                        material__47_material
                    ]
                }

                Model {

                    id: blue11_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90

                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box053.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,

                        material__47_material
                    ]
                }

                Model {

                    id: blue12_1
                    eulerRotation.z: 0.00005
                    eulerRotation.y: -0.00005
                    eulerRotation.x: -46.54071

                    x: 20.824
                    y: 41.989
                    z: 22.03768

                    source: "meshes/box054.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,

                        material__47_material
                    ]
                }

                Model {

                    id: blue13_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90

                    x: -0.221
                    y: 0.97
                    z: 1.09963

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
                    id: blue1_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box218.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }

                Model {
                    id: blue2_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box050.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,

                        material__47_material
                    ]
                }

                Model {

                    id: blue3_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box049.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,

                        material__47_material
                    ]
                }

                Model {

                    id: blue4_2
                    eulerRotation.z: 90.00121
                    eulerRotation.y: 90.00121
                    eulerRotation.x: 89.35593
                    x: -0.221
                    y: 0.97
                    z: 1.09963
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

                    id: blue5_2
                    eulerRotation.z: 90.00169
                    eulerRotation.y: 90.00169
                    eulerRotation.x: 88.61605
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box047.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,

                        material__47_material
                    ]
                }

                Model {

                    id: blue6_2
                    eulerRotation.z: 90.00097
                    eulerRotation.y: 90.00097
                    eulerRotation.x: 89.18964
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box046.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,

                        material__47_material
                    ]
                }

                Model {

                    id: blue7_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box212.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,

                        material__47_material
                    ]
                }

                Model {

                    id: blue8_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963
                    source: "meshes/box211.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,

                        material__47_material
                    ]
                }

                Model {

                    id: blue9_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box210.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,

                        material__47_material
                    ]
                }

                Model {

                    id: blue10_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90

                    x: -0.221
                    y: 0.97
                    z: 1.09963
                    source: "meshes/box219.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,

                        material__47_material
                    ]
                }

                Model {

                    id: blue11_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90

                    x: -0.221
                    y: 0.97
                    z: 1.09963
                    source: "meshes/box220.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,

                        material__47_material
                    ]
                }

                Model {

                    id: blue12_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90

                    x: -0.221
                    y: 0.97
                    z: 1.09963
                    source: "meshes/box221.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,

                        material__47_material
                    ]
                }

                Model {

                    id: blue13_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box222.mesh"
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
                    id: black1_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box192.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }
                Model {
                    id: black2_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box191.mesh"

                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {

                    id: black3_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box190.mesh"

                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }


                Model {
                    id: black4_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box189.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black5_1
                    eulerRotation.z: 90.00043
                    eulerRotation.y: 90.00043
                    eulerRotation.x: 87.283
                    x: -0.221
                    y: 0.97
                    z: 1.09963

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
                    id: black6_1
                    eulerRotation.z: 90.00179
                    eulerRotation.y: 90.00179
                    eulerRotation.x: 89.12374
                    x: -0.221
                    y: 0.97
                    z: 1.09963

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
                    id: black7_1
                    eulerRotation.z: 90.00197
                    eulerRotation.y: 90.00197
                    eulerRotation.x: 89.20525
                    x: -0.221
                    y: 0.97
                    z: 1.09963

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
                    id: black8_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box185.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black9_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box184.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black10_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90

                    x: -0.221
                    y: 0.97
                    z: 1.09963
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
                    id: black11_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90

                    x: -0.221
                    y: 0.97
                    z: 1.09963
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
                    id: black12_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90

                    x: -0.221
                    y: 0.97
                    z: 1.09963
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
                    id: black13_1
                    eulerRotation.z: 90.00299
                    eulerRotation.y: 90.00299
                    eulerRotation.x: 89.34568

                    x: -0.221
                    y: 0.97
                    z: 1.09963
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
                    id: black1_2
                    eulerRotation.z: 90.00053
                    eulerRotation.y: 90.00053
                    eulerRotation.x: 87.77859
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box021.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black2_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box020.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black3_2
                    eulerRotation.z: 90.0004
                    eulerRotation.y: 90.0004
                    eulerRotation.x: 87.05869
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box019.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black4_2
                    eulerRotation.z: 90.00141
                    eulerRotation.y: 90.00141
                    eulerRotation.x: 89.1689
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box018.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black5_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963
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
                    id: black6_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963
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
                    id: black7_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box186.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black8_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box014.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black9_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box013.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black10_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box022.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black11_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90

                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box023.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black12_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90

                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box024.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: black13_2
                    eulerRotation.z: 90.00462
                    eulerRotation.y: 90.00462
                    eulerRotation.x: 89.66196

                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box025.mesh"
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
                    id: yellow1_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963

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
                Model {
                    id: yellow2_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box064.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow3_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963

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
                    id: yellow4_1
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box062.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow5_1
                    eulerRotation.z: 90.0013
                    eulerRotation.y: 90.0013
                    eulerRotation.x: 88.50564


                    x: -0.221
                    y: 0.97
                    z: 1.09963

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
                    id: yellow6_1
                    eulerRotation.z: 0
                    eulerRotation.y: -0.24587
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

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
                    id: yellow7_1
                    eulerRotation.z: 90.00114
                    eulerRotation.y: 90.00114
                    eulerRotation.x: 88.6347
                    x: -0.221
                    y: 0.97
                    z: 1.09963

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
                    id: yellow8_1
                    eulerRotation.z: 0
                    eulerRotation.y: -0.16559
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963

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
                    id: yellow9_1
                    eulerRotation.z: 90.00072
                    eulerRotation.y: 90.00072
                    eulerRotation.x: 87.28185


                    x: -0.221
                    y: 0.97
                    z: 1.09963

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
                    eulerRotation.z: 90.00103
                    eulerRotation.y: 90.00103
                    eulerRotation.x: 88.09782
                    id: yellow10_1



                    x: -0.221
                    y: 0.97
                    z: 1.09963

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
                    eulerRotation.z: 90.00081
                    eulerRotation.y: 90.00081
                    eulerRotation.x: 87.09222
                    id: yellow11_1



                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box067.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    id: yellow12_1
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box068.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    id: yellow13_1



                    x: -0.221
                    y: 0.97
                    z: 1.09963

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
                    id: yellow1_2
                    eulerRotation.z: 90.00066
                    eulerRotation.y: 90.00066
                    eulerRotation.x: 87.04601


                    x: -0.221
                    y: 0.97
                    z: 1.09963
                    source: "meshes/box231.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow2_2
                    eulerRotation.z: 90.00169
                    eulerRotation.y: 90.00169
                    eulerRotation.x: 88.84326


                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box230.mesh"

                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow3_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90


                    x: -0.221
                    y: 0.97
                    z: 1.09963
                    source: "meshes/box229.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow4_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963
                    source: "meshes/box228.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow5_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90
                    x: -0.221
                    y: 0.97
                    z: 1.09963

                    source: "meshes/box061.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow6_2
                    eulerRotation.z: 90.00073
                    eulerRotation.y: 90.00073
                    eulerRotation.x: 86.80904
                    x: -0.221
                    y: 0.97
                    z: 1.09963
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
                    id: yellow7_2
                    eulerRotation.z: 90.00039
                    eulerRotation.y: 90.00039
                    eulerRotation.x: 88.01357
                    x: -0.221
                    y: 0.97
                    z: 1.09963
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
                    id: yellow8_2
                    eulerRotation.z: 90.00074
                    eulerRotation.y: 90.00074
                    eulerRotation.x: 88.4128
                    x: -0.221
                    y: 0.97
                    z: 1.09963
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
                    id: yellow9_2
                    eulerRotation.z: 90.00159
                    eulerRotation.y: 90.00159
                    eulerRotation.x: 89.50782
                    x: -0.221
                    y: 0.97
                    z: 1.09963
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
                    id: yellow10_2
                    eulerRotation.z: 90.00059
                    eulerRotation.y: 90.00059
                    eulerRotation.x: 86.63663

                    x: -0.221
                    y: 0.97
                    z: 1.09963
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
                    id: yellow11_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90

                    x: -0.221
                    y: 0.97
                    z: 1.09963
                    source: "meshes/box233.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow12_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90

                    x: -0.221
                    y: 0.97
                    z: 1.09963
                    source: "meshes/box234.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }

                Model {
                    id: yellow13_2
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90

                    x: -0.221
                    y: 0.97
                    z: 1.09963
                    source: "meshes/box235.mesh"
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
                    id: fake_1 // f0_1
                    x: -0.185
                    y: 1.166
                    z: 1.06041
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: 90

                    source: "meshes/box042.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }

                Model {
                    id: fake_2
                    eulerRotation.z: 90.00062
                    eulerRotation.y: 90.00062
                    eulerRotation.x: 88.09074
                    x: -0.223
                    y: 1.027
                    z: 1.04675

                    source: "meshes/box027.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }
            }

            Node{
                id: spotlights

                Component.onCompleted: {
                    okeyController.spotLights = spotlights.children;
                }

                SpotLight {
                    id: lightSpot

                    x: -0
                    y: 48.839
                    opacity: 1
                    visible: false
                    color: "#fdfcf8fe"
                    brightness: 1.03
                    castsShadow: false
                    ambientColor: "#000000"
                    z: 83.80083
                    PropertyAnimation on brightness {
                        running: true
                        loops: Animation.Infinite
                        from: 1
                        to: 15
                        duration: 1000
                    }
                }
                SpotLight {
                    id: lightSpot2
                    x: -48.923
                    y: -1.954
                    opacity: 1
                    visible: false
                    color: "#fdffffff"
                    brightness: 1.03
                    castsShadow: false
                    ambientColor: "#000000"
                    z: 83.80084
                    PropertyAnimation on brightness {
                        running: true
                        loops: Animation.Infinite
                        from: 1
                        to: 15
                        duration: 1000
                    }
                }

                SpotLight {
                    id: lightSpot3
                    x: 3.628
                    y: -46.547
                    opacity: 1
                    visible: false
                    color: "#fdffffff"
                    brightness: 1.03
                    castsShadow: false
                    ambientColor: "#000000"
                    z: 83.80086
                    PropertyAnimation on brightness {
                        running: true
                        loops: Animation.Infinite
                        from: 1
                        to: 15
                        duration: 1000
                    }
                }

                SpotLight {
                    id: lightSpot4
                    x: 49.054
                    y: 1.027
                    opacity: 1
                    visible: false
                    color: "#fdffffff"
                    brightness: 1.03
                    castsShadow: false
                    ambientColor: "#000000"
                    z: 83.80085
                    PropertyAnimation on brightness {
                        running: true
                        loops: Animation.Infinite
                        from: 1
                        to: 15
                        duration: 1000
                    }
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

                    Node {
                        id: player1_text
                        x: -0.206
                        y: 48.894
                        eulerRotation.z: 179.59169
                        eulerRotation.y: 0
                        eulerRotation.x: 0

                        //position: Qt.vector3d(0, 100, -120)
                        z: -3.85717


                        Item {
                            width: 20
                            height: 10
                            anchors.centerIn: parent

                            Text {

                                anchors.top: parent.top
                                anchors.horizontalCenter: parent.horizontalCenter
                                font.pixelSize: 4
                                color: "#d1d0cc"
                                style: Text.Raised
                                text: okeyController.player1Text


                            }
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
                        opacity: 1
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

                    Node {
                        id: player2_text
                        x: -50.914
                        y: 0.746
                        eulerRotation.z: -90.17391
                        eulerRotation.y: -0.00001
                        eulerRotation.x: 0.00001

                        //position: Qt.vector3d(0, 100, -120)
                        z: -4.28176


                        Item {
                            width: 20
                            height: 10
                            anchors.centerIn: parent

                            Text {
                                anchors.top: parent.top

                                anchors.horizontalCenter: parent.horizontalCenter
                                font.pixelSize: 4
                                color: "#d1d0cc"
                                style: Text.Raised
                                text: okeyController.player2Text
                            }
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

                    Node {
                        id: player3_text
                        x: -0.882
                        y: -48.601
                        eulerRotation.z: 0.08663
                        eulerRotation.y: 0
                        eulerRotation.x: 0.00001

                        //position: Qt.vector3d(0, 100, -120)
                        z: -4.36623


                        Item {
                            width: 20
                            height: 10
                            anchors.centerIn: parent

                            Text {
                                anchors.top: parent.top
                                id: player1TextItem
                                anchors.horizontalCenter: parent.horizontalCenter
                                font.pixelSize: 4
                                color: "#d1d0cc"
                                style: Text.Raised
                                text: okeyController.player3Text

                                //onPlayer3TextChanged: {
                                    //console.log("hereee");
                                    // Set the 'text' property of the Text element
                                    //player3TextItem.text = "degistiii";
                                //}

                            }


                        }
                    }


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

                    Node {
                        id: player4_text
                        x: 51.197
                        y: -0.197
                        eulerRotation.z: 88.54504
                        eulerRotation.y: 0.00001
                        eulerRotation.x: 0.00001

                        //position: Qt.vector3d(0, 100, -120)
                        z: -4.27052


                        Item {
                            width: 20
                            height: 10
                            anchors.centerIn: parent

                            Text {
                                anchors.top: parent.top

                                anchors.horizontalCenter: parent.horizontalCenter
                                font.pixelSize: 4
                                color: "#d1d0cc"
                                style: Text.Raised
                                text: okeyController.player4Text
                            }
                        }
                    }



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

            visible: false

            z: 1122.3479
            eulerRotation.z: 0.00001
            eulerRotation.y: -0.00001
            eulerRotation.x: -62.28382
        }

        DirectionalLight {
            id: directionalLight3
            x: -143.434
            y: 706.918

            visible: false

            z: -1033.84485
            eulerRotation.z: 121.91115
            eulerRotation.y: 160.63445
            eulerRotation.x: -27.09429
        }
        DirectionalLight {
            id: directionalLight1
            x: 780.197
            y: 1070.734

            visible: false

            z: 0
            eulerRotation.z: -87.26819
            eulerRotation.y: 87.98039
            eulerRotation.x: -47.64975
        }
        DirectionalLight {
            id: directionalLight
            x: -889.202
            y: 1070.734

            opacity: 1
            visible: true
            castsShadow: false

            eulerRotation.z: 87.91602
            eulerRotation.y: -89.02125
            eulerRotation.x: -28.00166
            z: 30.54141
        }


        Mesa_80cm {
            id: mesa_80cm
            x: -7.969
            y: -104.597
            scale.z: 0.12516
            scale.y: 0.12516
            scale.x: 0.12516
            z: -25.84771


        }

    }
    Component.onCompleted: {
        socket_comm.startOkey();
    }
}



import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node
    scale.z: 10
    scale.y: 10
    scale.x: 10

    // Resources

    // Nodes:
    Node {
        id: rootNode
        Node {
            id: finall
            eulerRotation.z: 90
            eulerRotation.y: -90
            eulerRotation.x: -90
            Node {
                id: player1
                x: 0.3458123207092285
                y: 43.94361877441406
                z: 0.2561922073364258
                Model {
                    id: red9_1
                    objectName: R9
                    x: -15.893329620361328
                    y: -0.19949722290039062
                    z: 0.8023271560668945
                    rotation: Qt.quaternion(-1.92103e-07, 3.17371e-08, -0.162999, 0.986626)
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
                    x: -12.904211044311523
                    y: -0.19949722290039062
                    z: 0.8023271560668945
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
                    x: -9.915090560913086
                    y: -0.23827362060546875
                    z: 0.9164810180664062
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
                    id: red10_1
                    objectName: R10
                    x: -18.929744720458984
                    y: -0.19949722290039062
                    z: 0.8023271560668945
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
                    id: red11_1
                    objectName: R11
                    x: 12.026544570922852
                    y: -0.125762939453125
                    z: 0.8916234970092773
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
                    id: red13_1
                    objectName: R13
                    x: 16.665571212768555
                    y: 2.0866127014160156
                    z: -3.116755962371826
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
                    id: blue7_1
                    objectName: B7
                    x: -18.93271827697754
                    y: 2.1141586303710938
                    z: -2.5828232765197754
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
                    id: blue4_1
                    objectName: B4
                    x: -16.304319381713867
                    y: 2.1141586303710938
                    z: -2.5828232765197754
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
                    id: blue1_1
                    objectName: B1
                    x: -13.499225616455078
                    y: 2.1141586303710938
                    z: -2.5828232765197754
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
                Model {
                    id: blue13_1
                    objectName: B13
                    x: 11.132486343383789
                    y: 2.26190185546875
                    z: -3.0572121143341064
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
                    id: yellow9_1
                    objectName: Y9
                    x: -7.586061477661133
                    y: 1.9170074462890625
                    z: -3.0123188495635986
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
                    x: -4.939067840576172
                    y: 1.9170074462890625
                    z: -3.0123188495635986
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
                    x: -2.3099365234375
                    y: 1.9170074462890625
                    z: -3.0123188495635986
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
                    x: 0.22967910766601562
                    y: 1.9170074462890625
                    z: -3.0123188495635986
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
                    id: yellow3_1
                    objectName: Y3
                    x: 14.582109451293945
                    y: -0.22174835205078125
                    z: 0.8590173721313477
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
                    id: yellow1_1
                    objectName: Y1
                    x: 17.34022331237793
                    y: -0.22174835205078125
                    z: 0.8590173721313477
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
                Model {
                    id: yellow10_1
                    objectName: Y10
                    x: -10.149480819702148
                    y: 1.9170074462890625
                    z: -3.0123188495635986
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
                    id: yellow13_1
                    objectName: Y13
                    x: 13.859621047973633
                    y: 2.25341796875
                    z: -3.0600953102111816
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
                    id: black5_1
                    objectName: K5
                    x: 3.668297290802002
                    y: -0.32831573486328125
                    z: 1.038590431213379
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
                    id: black6_1
                    objectName: K6
                    x: 0.6791763305664062
                    y: -0.32831573486328125
                    z: 1.038590431213379
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
                    id: black7_1
                    objectName: K7
                    x: -2.3099365234375
                    y: -0.32831573486328125
                    z: 1.038590431213379
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
                    id: box127
                    y: 0.001373291015625
                    z: -5
                    rotation: Qt.quaternion(4.37114e-08, 0, 0, 1)
                    source: "meshes/box127.mesh"
                    materials: [
                        material__1006_material,
                        material__43_material,
                        material__1040_Slot__2_material
                    ]
                }
            }

            Node {
                id: player2
                x: -42.4509391784668
                y: -0.8284931182861328
                z: 0.2561922073364258
                Model {
                    id: red6_1
                    objectName: R6
                    x: -1.731109619140625
                    y: 1.9815473556518555
                    z: -3.0068776607513428
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
                    x: -1.731109619140625
                    y: 4.534183502197266
                    z: -3.0068798065185547
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
                    x: -1.731109619140625
                    y: 7.1054768562316895
                    z: -3.0068798065185547
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box034.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }
                Model {
                    id: red3_1
                    objectName: R3

                    x: -1.731109619140625
                    y: 9.688523292541504
                    z: -3.0068798065185547
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
                    x: -1.731109619140625
                    y: 12.258012771606445
                    z: -3.0068798065185547
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box036.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }
                Model {
                    id: red1_1
                    objectName: R1
                    x: -1.731109619140625
                    y: 14.828797340393066
                    z: -3.0068798065185547
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box037.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }
                Model {
                    id: fake_1
                    objectName: F
                    x: -2.190765380859375
                    y: -9.541030883789062
                    z: -2.9189231395721436
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box042.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }
                Model {
                    id: blue1_2
                    objectName: B1
                    x: -2.063568115234375
                    y: -14.187110900878906
                    z: -2.946131944656372
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box218.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }
                Model {
                    id: blue3_1
                    objectName: B3
                    x: -2.0550994873046875
                    y: -16.989730834960938
                    z: -2.9212279319763184
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box216.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }
                Model {
                    id: blue7_2
                    objectName: B7
                    x: -2.063568115234375
                    y: -19.64781951904297
                    z: -2.946131944656372
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box212.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }
                Model {
                    id: yellow5_1
                    objectName: Y5
                    x: -2.0999908447265625
                    y: -3.82576847076416
                    z: -3.095850944519043
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
                    id: yellow11_1
                    objectName: Y11
                    x: -2.0378265380859375
                    y: -6.641471862792969
                    z: -3.1072232723236084
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box067.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }
                Model {
                    id: blue11_1
                    objectName: B11
                    x: 0.30450439453125
                    y: -19.281137466430664
                    z: 0.9719448089599609
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box053.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }
                Model {
                    id: black9_1
                    objectName: K9
                    x: 0.1522674560546875
                    y: -4.69917106628418
                    z: 1.0516815185546875
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
                    x: 0.1522674560546875
                    y: -1.9516868591308594
                    z: 1.0516815185546875
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box185.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }
                Model {
                    id: black7_2
                    objectName: K7
                    x: 0.1522674560546875
                    y: 0.7163152694702148
                    z: 1.0516815185546875
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box186.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }
                Model {
                    id: black4_1
                    objectName: K4
                    x: 0.2729034423828125
                    y: 10.051464080810547
                    z: 0.9802579879760742
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
                    x: 0.2729034423828125
                    y: 12.672113418579102
                    z: 0.9802579879760742
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
                    x: 0.2729034423828125
                    y: 15.25761604309082
                    z: 0.9802579879760742
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
                    x: 0.2729034423828125
                    y: 17.859893798828125
                    z: 0.9802579879760742
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box192.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }
                Model {
                    id: blue10_1
                    objectName: B10
                    x: 0.30450439453125
                    y: -16.755855560302734
                    z: 0.9719448089599609
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box052.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }
                Model {
                    id: blue8_1
                    objectName: B8
                    x: 0.30450439453125
                    y: -11.379125595092773
                    z: 0.9719448089599609
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box044.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }
                Model {
                    id: blue9_1
                    objectName: B9
                    x: 0.30450439453125
                    y: -14.07133674621582
                    z: 0.9719448089599609
                    rotation: Qt.quaternion(0.697629, -0.115385, 0.115385, -0.697629)
                    source: "meshes/box043.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }
                Model {
                    id: box129
                    x: -0.001373291015625
                    z: -5
                    rotation: Qt.quaternion(0.707107, 0, 0, -0.707107)
                    source: "meshes/box129.mesh"
                    materials: [
                        material__1006_material,
                        material__43_material,
                        material__1040_Slot__2_material191
                    ]
                }
            }


            Node {
                id: player3
                x: 0.27925682067871094
                y: -43.663047790527344
                z: 0.2561922073364258
                Model {
                    id: box001
                    y: -0.001373291015625
                    z: -5
                    source: "meshes/box001.mesh"
                    materials: [
                        material__1006_material,
                        material__43_material,
                        material__1040_Slot__2_material103
                    ]
                }
                Model {
                    id: black6_2
                    objectName: K6
                    x: 2.859757661819458
                    y: 0.20418548583984375
                    z: 0.896092414855957
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
                    x: 14.3314208984375
                    y: 0.32920074462890625
                    z: 0.9820652008056641
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
                    id: black10_1
                    objectName: K10
                    x: 11.393171310424805
                    y: -2.1383743286132812
                    z: -2.979937791824341
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
                    id: black11_1
                    objectName: K11
                    x: 14.095043182373047
                    y: -2.1383743286132812
                    z: -2.979937791824341
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
                    id: black12_1
                    objectName: K12
                    x: 16.716236114501953
                    y: -2.1383819580078125
                    z: -2.9799351692199707
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
                    id: black13_1
                    objectName: K13
                    x: 19.278858184814453
                    y: -2.1143951416015625
                    z: -2.9881277084350586
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
                    id: red6_2
                    objectName: R6
                    x: 7.956814765930176
                    y: 0.23545074462890625
                    z: 0.8837366104125977
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
                    id: red11_2
                    objectName: R11
                    x: -1.7058324813842773
                    y: -2.0800323486328125
                    z: -3.036505699157715
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
                    id: red12_1
                    objectName: R12
                    x: 0.8908243179321289
                    y: -2.0800323486328125
                    z: -3.036505699157715
                    rotation: Qt.quaternion(0.986495, -0.163791, 0, 0)
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
                    id: red13_2
                    objectName: R13
                    x: 3.4449567794799805
                    y: -2.0800323486328125
                    z: -3.036505699157715
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
                    id: blue6_1
                    objectName: B6
                    x: 0.3284006118774414
                    y: 0.17392730712890625
                    z: 0.911290168762207
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
                    x: -12.005023956298828
                    y: 0.35921478271484375
                    z: 0.832606315612793
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
                    id: blue4_2
                    objectName: B4
                    x: -14.619176864624023
                    y: 0.36136627197265625
                    z: 0.8115663528442383
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
                    id: blue2_1
                    objectName: B2
                    x: -17.28750991821289
                    y: 0.4502372741699219
                    z: 0.7530012130737305
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
                    id: yellow9_2
                    objectName: Y9
                    x: -12.646537780761719
                    y: -2.0320587158203125
                    z: -3.0733182430267334
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
                    x: -15.337583541870117
                    y: -2.0320587158203125
                    z: -3.0733182430267334
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
                    x: -18.056114196777344
                    y: -2.0320587158203125
                    z: -3.0733182430267334
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
                    x: 5.370190620422363
                    y: 0.22162628173828125
                    z: 0.9185113906860352
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
                    id: yellow10_2
                    objectName: Y10
                    x: -9.943033218383789
                    y: -2.0320587158203125
                    z: -3.0733182430267334
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
            }


            Node {
                id: player4
                x: 42.4509391784668
                y: -0.8284931182861328
                z: 0.2561922073364258
                Model {
                    id: black4_2
                    objectName: K4
                    x: 1.979705810546875
                    y: -11.302562713623047
                    z: -3.0968217849731445
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
                    y: -13.853546142578125
                    z: -3.0968217849731445
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
                    y: -16.464616775512695
                    z: -3.0968217849731445
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
                    y: -19.028545379638672
                    z: -3.0968217849731445
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box021.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }
                Model {
                    id: red12_2
                    objectName: R12
                    x: 1.8305206298828125
                    y: 19.088722229003906
                    z: -2.986633062362671
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box040.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }
                Model {
                    id: blue6_2
                    objectName: B6
                    x: -0.2125701904296875
                    y: 1.0931758880615234
                    z: 1.004349708557129
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
                    y: -1.895944595336914
                    z: 1.004349708557129
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box047.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }
                Model {
                    id: blue3_2
                    objectName: B3
                    x: 2.1771392822265625
                    y: -5.947919845581055
                    z: -2.9581069946289062
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
                    y: -18.610422134399414
                    z: 0.8684511184692383
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box050.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }
                Model {
                    id: blue12_1
                    objectName: B12
                    x: 1.8236541748046875
                    y: 13.394672393798828
                    z: -3.0608415603637695
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box054.mesh"
                    materials: [
                        material__43_material,
                        material__46_material,
                        material__47_material
                    ]
                }
                Model {
                    id: yellow5_2
                    objectName: Y5
                    x: 2.160614013671875
                    y: -0.6753063201904297
                    z: -2.9551656246185303
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box061.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }
                Model {
                    id: yellow4_1
                    objectName: Y4
                    x: 2.148101806640625
                    y: -3.29034423828125
                    z: -2.966517448425293
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box062.mesh"
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
                    y: -16.055849075317383
                    z: 0.9168787002563477
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box064.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }
                Model {
                    id: yellow12_1
                    objectName: Y12
                    x: 1.7946090698242188
                    y: 10.665081024169922
                    z: -3.0230443477630615
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box068.mesh"
                    materials: [
                        material__43_material,
                        material__45_material,
                        material__47_material
                    ]
                }
                Model {
                    id: black8_2
                    objectName: K8
                    x: -0.45388031005859375
                    y: 11.235459327697754
                    z: 0.7591867446899414
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box014.mesh"
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
                    y: 13.963351249694824
                    z: 0.7591867446899414
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box013.mesh"
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
                    y: 16.605403900146484
                    z: 0.7811470031738281
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box022.mesh"
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
                    y: 19.203327178955078
                    z: 0.7591867446899414
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box023.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }
                Model {
                    id: black12_2
                    objectName: K12
                    x: 1.8678131103515625
                    y: 16.26156997680664
                    z: -3.044590950012207
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box024.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }
                Model {
                    id: black13_2
                    objectName: K13
                    x: -0.19742584228515625
                    y: -9.187765121459961
                    z: 0.9178991317749023
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box025.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }
                Model {
                    id: fake_2
                    objectName: F
                    x: -0.0864105224609375
                    y: -6.347934722900391
                    z: 0.9587507247924805
                    rotation: Qt.quaternion(0.696147, -0.124016, -0.124016, 0.696147)
                    source: "meshes/box027.mesh"
                    materials: [
                        material__43_material,
                        material__44_material,
                        material__47_material
                    ]
                }
                Model {
                    id: box128
                    x: 0.001373291015625
                    z: -5
                    rotation: Qt.quaternion(0.707107, 0, 0, 0.707107)
                    source: "meshes/box128.mesh"
                    materials: [
                        material__1006_material,
                        material__43_material,
                        material__1040_Slot__2_material99
                    ]
                }
            }

            Node {
                id: throwed1
                x: -27.377246856689453
                y: 20.340946197509766
                z: -4.242720127105713
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
            }
            Node {
                id: throwed2
                x: -26.2369327545166
                y: -23.051246643066406
                z: -0.68475
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
            }


            Node {
                id: throwed3
                x: 23.467208862304688
                y: -17.408266067504883
                z: -4.519038200378418
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
                    id: red4_2
                    objectName: R4
                    x: -1.917
                    y: 0.584
                    z: 0.22477006912231445
                    rotation: Qt.quaternion(0.457188, -0.457188, 0.539425, -0.539425)
                    source: "meshes/box202.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }
            }
            Node {
                id: throwed4
                x: 23.319265365600586
                y: 20.62446403503418
                z: -4.300281047821045
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
                    id: red5_2
                    objectName: R5
                    x: -1.7993850708007812
                    y: 0.4885540008544922
                    z: -0.4435267448425293
                    rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
                    source: "meshes/box201.mesh"
                    materials: [
                        material__43_material,
                        material__47_material
                    ]
                }
            }
            Node {
                id: node9
                x: 0.546051025390625
                y: 2.6752543449401855
                z: -2.2896223068237305
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
                    id: yellow4_2
                    objectName: Y4
                    x: 2.04
                    y: -2.438
                    z: 2.50078
                    rotation: Qt.quaternion(0.517312, 0.517313, -0.482066, -0.482066)
                    source: "meshes/box228.mesh"
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
            }
        }
        Node {
            id: vrayLight001
            y: 160.63539123535156
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        }
        Node {
            id: physCamera001
            x: 46.2653694152832
            y: 46.7524528503418
            z: 137.39178466796875
            rotation: Qt.quaternion(0.974505, -0.149991, 0.164917, 0.0253832)
        }
        Node {
            id: physCamera001_Target
            x: 13.863510131835938
            y: 15.703742027282715
            z: 44.401371002197266
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        }
        Node {
            id: physCamera002
            x: 195.012451171875
            y: 35.27248001098633
            z: 3.808666706085205
            rotation: Qt.quaternion(0.706119, -0.0648833, 0.702156, 0.0645191)
            scale.x: 1
            scale.y: 1
            scale.z: 1
        }
        Node {
            id: physCamera002_Target
            x: 40.90673828125
            y: 6.710211277008057
            z: 2.9411838054656982
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        }
        Node {
            id: physCamera003
            x: 21.93421173095703
            y: 194.149658203125
            z: 1.1273142099380493
            rotation: Qt.quaternion(0.523733, -0.471572, 0.527226, 0.474717)
            scale.x: 1
            scale.y: 1
            scale.z: 1
        }
        Node {
            id: physCamera003_Target
            x: 0.8980678915977478
            y: -6.000586986541748
            z: 1.2671610116958618
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        }
        Node {
            id: physCamera004
            x: 90.41485595703125
            y: 58.50372314453125
            z: -95.01642608642578
            rotation: Qt.quaternion(0.355597, -0.0870139, 0.903912, 0.221186)
        }
        Node {
            id: physCamera004_Target
            x: 18.420291900634766
            y: 3.4980947971343994
            z: -17.67405891418457
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        }
    }

    // Animations:
    Timeline {
        startFrame: 0
        endFrame: 0
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 0
            from: 0
            to: 0
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: box127
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0.00137329, -5)
            }
        }
        KeyframeGroup {
            target: box127
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(-4.37114e-08, 0, 0, 1)
            }
        }
        KeyframeGroup {
            target: physCamera001
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(46.2654, 46.7525, 137.392)
            }
        }
        KeyframeGroup {
            target: physCamera002
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(195.012, 35.2725, 3.80867)
            }
        }
        KeyframeGroup {
            target: physCamera003
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(21.9342, 194.15, 1.12731)
            }
        }
        KeyframeGroup {
            target: physCamera004
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(90.4149, 58.5037, -95.0164)
            }
        }
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
}

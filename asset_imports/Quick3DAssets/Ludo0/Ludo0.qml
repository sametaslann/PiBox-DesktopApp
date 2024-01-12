import QtQuick

import QtQuick3D
import Quick3DAssets.Pawn
import QtQuick.Controls
// Nodes:
import QtQuick.Studio.Components


Node {
    id: node

    Node {

        id: rootNode

        Node {
            id: ludo_ludo
            scale.z: 10
            scale.y: 10
            scale.x: 10


            Model {

                id: ludo_ludo4
                source: "meshes/ludo_ludo4.mesh"
                materials: ludo_lambert3_material
            }
            Model {
                id: ludo_ludo5
                source: "meshes/ludo_ludo5.mesh"
                materials: ludo_lambert2_material

            }


        }
        Node
        {
            id: diceParent
            x: -0
            y: 7.681
            eulerRotation.z: 0
            eulerRotation.y: 0
            eulerRotation.x: 0
            z: -0.24254

            Component.onCompleted: {
                ludoController.dice = diceParent
            }

            function stopAnimations() {
                animationY.running = false;
                animationX.running = false;
                animationZ.running = false;
            }

            function startAnimations() {
                animationY.running = true;
                animationX.running = true;
                animationZ.running = true;
            }

            PropertyAnimation on eulerRotation.y {
                id: animationY
                running: false
                loops: 1
                from: 0
                to: 3600
                duration: 800
            }
            PropertyAnimation on eulerRotation.x {
                id: animationX
                running: false
                loops: 1
                from: 0
                to: 3600
                duration: 800
            }
            PropertyAnimation on eulerRotation.z {
                id: animationZ
                running: false
                loops:1
                from: 0
                to: 3600
                duration: 1500
            }


            Model {
                id: dice
                scale.z: 8.55313
                scale.y: 8.55313
                scale.x: 8.55313
                x: 0
                y: -5.745
                z: -0.06461
                source: "meshes/ludo_ludo.mesh"
                eulerRotation.z: 0
                eulerRotation.y: 0
                eulerRotation.x: 0
                materials: ludo_blinn6_material



            }
        }



        Node {
            id: plates
            visible: false

            Component.onCompleted: {
                ludoController.plates = plates.children;
            }

            Model {
                id: plane0
                x: -7.977
                y: 3.193
                source: "#Rectangle"
                z: 52.04586
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {

                id: plane1
                objectName: "Nodeisteamk"
                x: -8.041
                y: 3.193
                source: "#Rectangle"
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                z: 44.31235
                eulerRotation.x: -90
                materials: plates_Material
            }

            Model {
                id: plane2
                x: -7.968
                y: 3.193
                source: "#Rectangle"
                z: 37.02257
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane3
                x: -7.814
                y: 3.193
                source: "#Rectangle"
                z: 29.8605
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane4
                x: -7.649
                y: 3.193
                z: 22.07148
                source: "#Rectangle"
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane5
                x: -7.649
                y: 3.193
                source: "#Rectangle"
                z: 14.70286
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }


            Model {
                id: plane6
                x: -16.374
                y: 3.193
                source: "#Rectangle"
                z: 7.51873
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }

            Model {
                id: plane7
                x: -23.743
                y: 3.193
                source: "#Rectangle"
                z: 7.50395
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }



            Model {
                id: plane8
                x: -30.859
                y: 3.193
                source: "#Rectangle"
                z: 7.48968
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }

            Model {
                id: plane9
                x: -38.066
                y: 3.193
                source: "#Rectangle"
                z: 7.47523
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }

            Model {
                id: plane10
                x: -45.254
                y: 3.193
                source: "#Rectangle"
                z: 7.46081
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }



            Model {
                id: plane11
                x: -53.077
                y: 3.193
                source: "#Rectangle"
                z: 7.22338
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }


            Model {
                id: plane12
                x: -53.061
                y: 3.193
                source: "#Rectangle"
                z: -0.63122
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }

            Model {
                id: plane13
                x: -53.046
                y: 3.193
                source: "#Rectangle"
                z: -8.24907
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }

            Model {
                id: plane14
                x: -45.098
                y: 3.193
                source: "#Rectangle"
                z: -8.23307
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }

            Model {
                id: plane15
                x: -37.91
                y: 3.193
                source: "#Rectangle"
                z: -8.21865
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }

            Model {
                id: plane16
                x: -30.703
                y: 3.193
                source: "#Rectangle"
                z: -8.2042
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }

            Model {
                id: plane17
                x: -23.587
                y: 3.193
                source: "#Rectangle"
                z: -8.18993
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }

            Model {
                id: plane18
                x: -16.218
                y: 3.193
                source: "#Rectangle"
                z: -8.17515
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }

            Model {
                id: plane19
                x: -7.649
                y: 3.193
                source: "#Rectangle"
                z: -15.88416
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane20
                x: -7.649
                y: 3.193
                source: "#Rectangle"
                z: -23.07257
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane21
                x: -7.649
                y: 3.193
                source: "#Rectangle"
                z: -30.27946
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane22
                x: -7.649
                y: 3.193
                source: "#Rectangle"
                z: -37.39525
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane23
                x: -7.649
                y: 3.193
                source: "#Rectangle"
                z: -44.76387
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }



            Model {
                id: plane24
                x: -8.361
                y: 3.193
                source: "#Rectangle"
                z: -52.67999
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane25
                x: -0.506
                y: 3.193
                source: "#Rectangle"
                z: -52.65417
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane26
                x: 7.112
                y: 3.193
                source: "#Rectangle"
                z: -52.62965
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }





            Model {
                id: plane27
                x: 7.337
                y: 3.193
                source: "#Rectangle"
                z: -44.954
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }




            Model {
                id: plane28
                x: 7.337
                y: 3.193
                source: "#Rectangle"
                z: -37.58538
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane29
                x: 7.337
                y: 3.193
                source: "#Rectangle"
                z: -30.46959
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane30
                x: 7.337
                y: 3.193
                source: "#Rectangle"
                z: -23.2627
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane31
                x: 7.337
                y: 3.193
                source: "#Rectangle"
                z: -16.07429
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane32
                x: 14.836
                y: 3.193
                source: "#Rectangle"
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                z: -8.23307
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane33
                x: 22.024
                y: 3.193
                source: "#Rectangle"
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                z: -8.21865
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane34
                x: 29.231
                y: 3.193
                source: "#Rectangle"
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                z: -8.2042
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane35
                x: 36.347
                y: 3.193
                source: "#Rectangle"
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                z: -8.18993
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane36
                x: 43.716
                y: 3.193
                source: "#Rectangle"
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                z: -8.17515
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane37
                x: 51.219
                y: 3.193
                source: "#Rectangle"
                z: -8.24907
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }

            Model {
                id: plane38
                x: 51.204
                y: 3.193
                source: "#Rectangle"
                z: -0.63122
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }

            Model {
                id: plane39
                x: 51.188
                y: 3.193
                source: "#Rectangle"
                z: 7.22338
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }


            Model {
                id: plane40
                x: 43.716
                y: 3.193
                source: "#Rectangle"
                z: 7.24126
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }


            Model {
                id: plane41
                x: 36.347
                y: 3.193
                source: "#Rectangle"
                z: 7.22648
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }

            Model {
                id: plane42
                x: 29.231
                y: 3.193
                source: "#Rectangle"
                z: 7.21221
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }



            Model {
                id: plane43
                x: 22.024
                y: 3.193
                source: "#Rectangle"
                z: 7.19776
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }

            Model {
                id: plane44
                x: 14.836
                y: 3.193
                source: "#Rectangle"
                z: 7.18334
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 269.88486
                eulerRotation.x: -90
            }

            Model {
                id: plane45
                x: 6.851
                y: 3.193
                source: "#Rectangle"
                z: 14.70286
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane46
                x: 6.851
                y: 3.193
                source: "#Rectangle"
                z: 22.07148
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane47
                x: 6.851
                y: 3.193
                source: "#Rectangle"
                z: 29.18727
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane48
                x: 6.851
                y: 3.193
                source: "#Rectangle"
                z: 36.39416
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }


            Model {
                id: plane49
                x: 7.255
                y: 3.193
                source: "#Rectangle"
                z: 44.61643
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.x: -90
            }

            Model {
                id: plane50
                x: 7.109
                y: 3.193
                source: "#Rectangle"
                z: 52.14363
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane51
                x: -0.509
                y: 3.193
                source: "#Rectangle"
                z: 52.0363
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane52
                x: -39.827
                y: 3.177
                source: "#Rectangle"
                z: 39.15681
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane53
                x: -39.853
                y: 3.208
                source: "#Rectangle"
                z: 27.24724
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane54
                x: -27.564
                y: 3.261
                source: "#Rectangle"
                z: 38.87616
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane55
                x: -27.6
                y: 3.193
                source: "#Rectangle"
                z: 27.1248
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane56
                x: -40.078
                y: 3.254
                source: "#Rectangle"
                z: -28.35985
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane57
                x: -40.04
                y: 3.254
                source: "#Rectangle"
                z: -40.03526
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane58
                x: -28.269
                y: 3.254
                source: "#Rectangle"
                z: -28.0208
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane59
                x: -28.319
                y: 3.254
                source: "#Rectangle"
                z: -40.00153
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane60
                x: 26.708
                y: 3.254
                source: "#Rectangle"
                z: -28.09152
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane61
                x: 26.747
                y: 3.254
                source: "#Rectangle"
                z: -40.09193
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane62
                x: 38.768
                y: 3.254
                source: "#Rectangle"
                z: -28.0522
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane63
                x: 38.824
                y: 3.254
                source: "#Rectangle"
                z: -40.31515
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane64
                x: 26.739
                y: 3.254
                source: "#Rectangle"
                z: 39.08979
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane65
                x: 26.777
                y: 3.254
                source: "#Rectangle"
                z: 27.2918
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane66
                x: 38.778
                y: 3.254
                source: "#Rectangle"
                z: 39.12904
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane67
                x: 39.068
                y: 3.254
                source: "#Rectangle"
                z: 27.61938
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane68
                x: -0.148
                y: 3.254
                source: "#Rectangle"
                z: 44.18189
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane69
                x: -0.125
                y: 3.254
                source: "#Rectangle"
                z: 37.14019
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane70
                x: -0.101
                y: 3.254
                source: "#Rectangle"
                z: 29.84694
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane71
                x: -0.195
                y: 3.254
                source: "#Rectangle"
                z: 21.80371
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane72
                x: -0.052
                y: 3.254
                source: "#Rectangle"
                z: 14.66429
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane73
                x: -44.861
                y: 3.254
                source: "#Rectangle"
                z: -0.44101
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane74
                x: -37.796
                y: 3.254
                source: "#Rectangle"
                z: -0.41797
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane75
                x: -30.512
                y: 3.254
                source: "#Rectangle"
                z: -0.39422
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane76
                x: -23.396
                y: 3.254
                source: "#Rectangle"
                z: -0.37102
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane77
                x: -15.874
                y: 3.254
                source: "#Rectangle"
                z: -0.3465
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane78
                x: -0.29
                y: 3.254
                source: "#Rectangle"
                z: -44.97356
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane79
                x: -0.313
                y: 3.254
                source: "#Rectangle"
                z: -37.93285
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane80
                x: -0.337
                y: 3.254
                source: "#Rectangle"
                z: -30.49298
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane81
                x: -0.361
                y: 3.254
                source: "#Rectangle"
                z: -23.32095
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane82
                x: -0.384
                y: 3.254
                source: "#Rectangle"
                z: -16.23391
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane83
                x: 44.135
                y: 3.254
                source: "#Rectangle"
                z: -0.37882
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane84
                x: 36.589
                y: 3.254
                source: "#Rectangle"
                z: -0.40342
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane85
                x: 29.523
                y: 3.254
                source: "#Rectangle"
                z: -0.42646
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane86
                x: 22.205
                y: 3.254
                source: "#Rectangle"
                z: -0.45032
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }

            Model {
                id: plane87
                x: 14.793
                y: 3.254
                source: "#Rectangle"
                z: -0.47449
                scale.z: 0.06151
                scale.y: 0.06151
                scale.x: 0.06624
                materials: plates_Material
                eulerRotation.z: 0
                eulerRotation.y: 179.81319
                eulerRotation.x: -90
            }


        }

        Node {
            id: pawns

            scale.z: 1
            scale.y: 1
            scale.x: 1

            Component.onCompleted: {
                ludoController.pawns = pawns.children;
            }

            Model {
                id: red_pawn1

                x: -48.952
                y: 8.575
                source: "meshes/chess_Pawn_0.mesh"
                eulerRotation.z: -180
                eulerRotation.y: -180
                z: 69.75686
                scale.z: 2.6
                scale.y: 2.6
                scale.x: 2.6
                materials: red_Pawns_Material
                eulerRotation.x: -87.6564
                SpotLight {
                    id: red_light1
                    //objectName: red_light1
                    x: 0.091
                    y: -0.016
                    opacity: 1
                    visible: false
                    color: "#fdffffff"
                    z: 15.34518
                    PropertyAnimation on brightness{
                        running: true
                        loops: Animation.Infinite
                        duration: 850
                        to:15
                        from: 0
                    }
                    coneAngle: 10
                    castsShadow: false
                    brightness: 0.1
                    ambientColor: "#000000"
                }


            }


            Model {
                id: red_pawn2
                x: -58.005
                y: 7.996
                source: "meshes/chess_Pawn_0.mesh"
                z: 69.95655
                scale.z: 2.6
                scale.y: 2.6
                scale.x: 2.6
                materials: red_Pawns_Material
                eulerRotation.x: -90

                SpotLight {
                    id: red_light2
                    x: 0.091
                    y: -0.016
                    opacity: 1
                    visible: false
                    color: "#fdffffff"
                    z: 16.00262
                    PropertyAnimation on brightness{
                        running: true
                        loops: Animation.Infinite
                        duration: 850
                        to:15
                        from: 1
                    }
                    coneAngle: 10
                    castsShadow: false
                    brightness: 0.1
                    ambientColor: "#000000"
                }
            }
            Model {
                id: red_pawn3
                x: -40.229
                y: 7.82
                source: "meshes/chess_Pawn_0.mesh"
                scale.z: 2.6
                z: 69.98987
                scale.y: 2.6
                scale.x: 2.6
                eulerRotation.x: -90
                materials: red_Pawns_Material

                SpotLight {
                    id: red_light3
                    x: 0.091
                    y: -0.016
                    opacity: 1
                    visible: false
                    color: "#fdffffff"
                    z: 15.34518
                    PropertyAnimation on brightness{
                        running: true
                        loops: Animation.Infinite
                        duration: 850
                        to:15
                        from: 1
                    }
                    coneAngle: 10
                    castsShadow: false
                    brightness: 0.1
                    ambientColor: "#000000"
                }
            }

            Model {
                id: red_pawn4
                x: -31.863
                y: 8.575
                source: "meshes/chess_Pawn_0.mesh"
                z: 69.75686
                scale.z: 2.6
                scale.y: 2.6
                scale.x: 2.6
                materials: red_Pawns_Material
                eulerRotation.x: -90

                SpotLight {
                    id: red_light4
                    x: 0.091
                    y: -0.016
                    opacity: 1
                    visible: false
                    color: "#fdffffff"
                    z: 15.34518
                    PropertyAnimation on brightness{
                        running: true
                        loops: Animation.Infinite
                        duration: 850
                        to:15
                        from: 1
                    }
                    coneAngle: 10
                    castsShadow: false
                    brightness: 0.1
                    ambientColor: "#000000"
                }
            }


            Model {
                id: green_pawn1
                x: -53.978
                y: 7.646
                source: "meshes/chess_Pawn_0.mesh"
                z: -68.5414
                scale.z: 2.6
                scale.y: 2.6
                scale.x: 2.6
                materials: green_Pawns_Material
                eulerRotation.x: -90

                SpotLight {
                    id: green_light1
                    x: 0.091
                    y: -0.016
                    opacity: 1
                    visible: false
                    color: "#fdfcf8fe"
                    z: 15.50231
                    PropertyAnimation on brightness{
                        running: true
                        loops: Animation.Infinite
                        duration: 850
                        to:15
                        from: 1
                    }
                    coneAngle: 10
                    castsShadow: false
                    brightness: 0.1
                    ambientColor: "#000000"
                }
            }

            Model {
                id: green_pawn2
                x: -43.259
                y: 7.893
                source: "meshes/chess_Pawn_0.mesh"
                z: -69.03117
                scale.z: 2.6
                scale.y: 2.6
                scale.x: 2.6
                materials: green_Pawns_Material
                eulerRotation.x: -90

                SpotLight {
                    id: green_light2
                    x: 0.091
                    y: -0.016
                    opacity: 1
                    visible: false
                    color: "#fdfcf8fe"
                    z: 15.50231
                    PropertyAnimation on brightness{
                        running: true
                        loops: Animation.Infinite
                        duration: 850
                        to:15
                        from: 1
                    }
                    coneAngle: 10
                    castsShadow: false
                    brightness: 0.1
                    ambientColor: "#000000"
                }
            }

            Model {
                id: green_pawn3
                x: -22.061
                y: 7.717
                source: "meshes/chess_Pawn_0.mesh"
                z: -68.69618
                scale.z: 2.6
                scale.y: 2.6
                scale.x: 2.6
                materials: green_Pawns_Material
                eulerRotation.x: -90

                SpotLight {
                    id: green_light3
                    x: 0.091
                    y: -0.016
                    opacity: 1
                    visible: false
                    color: "#fdfcf8fe"
                    z: 15.50231
                    PropertyAnimation on brightness{
                        running: true
                        loops: Animation.Infinite
                        duration: 850
                        to:15
                        from: 1
                    }
                    coneAngle: 10
                    castsShadow: false
                    brightness: 0.1
                    ambientColor: "#000000"
                }
            }

            Model {
                id: green_pawn4
                x: -32.887
                y: 8.472
                source: "meshes/chess_Pawn_0.mesh"
                z: -68.49947
                scale.z: 2.6
                scale.y: 2.6
                scale.x: 2.6
                materials: green_Pawns_Material
                eulerRotation.x: -90

                SpotLight {
                    id: green_light4
                    x: 0.091
                    y: -0.016
                    opacity: 1
                    visible: false
                    color: "#fdfcf8fe"
                    z: 15.50231
                    PropertyAnimation on brightness{
                        running: true
                        loops: Animation.Infinite
                        duration: 850
                        to:15
                        from: 1
                    }
                    coneAngle: 10
                    castsShadow: false
                    brightness: 0.1
                    ambientColor: "#000000"
                }
            }

            Model {
                id: yellow_Pawn1
                x: 59.275
                y: 7.089
                source: "meshes/chess_Pawn_0.mesh"
                z: -66.82545
                scale.z: 2.6
                scale.y: 2.6
                scale.x: 2.6
                materials: yellow_Pawns_Material
                eulerRotation.x: -90
                SpotLight {
                    id: yellow_light1
                    x: 0.091
                    y: -0.016
                    opacity: 1
                    visible: false
                    color: "#fdffffff"
                    z: 15.50231
                    PropertyAnimation on brightness{
                        running: true
                        loops: Animation.Infinite
                        duration: 850
                        to:15
                        from: 1
                    }
                    coneAngle: 10
                    castsShadow: false
                    brightness: 0.1
                    ambientColor: "#000000"
                }
            }

            Model {
                id: yellow_Pawn2
                x: 32.372
                y: 7.336
                source: "meshes/chess_Pawn_0.mesh"
                z: -67.24146
                scale.z: 2.6
                scale.y: 2.6
                scale.x: 2.6
                materials: yellow_Pawns_Material
                eulerRotation.x: -90
                SpotLight {
                    id: yellow_light2
                    x: 0.091
                    y: -0.016
                    opacity: 1
                    visible: false
                    color: "#fdffffff"
                    z: 15.50231
                    PropertyAnimation on brightness{
                        running: true
                        loops: Animation.Infinite
                        duration: 850
                        to:15
                        from: 1
                    }
                    coneAngle: 10
                    castsShadow: false
                    brightness: 0.1
                    ambientColor: "#000000"
                }
            }


            Model {
                id: yellow_Pawn3
                x: 50.828
                y: 7.16
                source: "meshes/chess_Pawn_0.mesh"
                z: -67.07595
                scale.z: 2.6
                scale.y: 2.6
                scale.x: 2.6
                materials: yellow_Pawns_Material
                eulerRotation.x: -90
                SpotLight {
                    id: yellow_light3
                    x: 0.091
                    y: -0.016
                    opacity: 1
                    visible: false
                    color: "#fdffffff"
                    z: 15.50231
                    PropertyAnimation on brightness{
                        running: true
                        loops: Animation.Infinite
                        duration: 850
                        to:15
                        from: 1
                    }
                    coneAngle: 10
                    castsShadow: false
                    brightness: 0.1
                    ambientColor: "#000000"
                }
            }



            Model {
                id: yellow_Pawn4
                x: 42.203
                y: 7.915
                source: "meshes/chess_Pawn_0.mesh"
                z: -67.45576
                scale.z: 2.6
                scale.y: 2.6
                scale.x: 2.6
                materials: yellow_Pawns_Material
                eulerRotation.x: -90
                SpotLight {
                    id: yellow_light4
                    x: 0.091
                    y: -0.016
                    opacity: 1
                    visible: false
                    color: "#fdffffff"
                    z: 15.50231
                    PropertyAnimation on brightness{
                        running: true
                        loops: Animation.Infinite
                        duration: 850
                        to:15
                        from: 1
                    }
                    coneAngle: 10
                    castsShadow: false
                    brightness: 0.1
                    ambientColor: "#000000"
                }
            }

            Model {
                id: blue_pawn1
                x: 30.948
                y: 8.977
                source: "meshes/chess_Pawn_0.mesh"
                z: 68.35419
                scale.z: 2.6
                scale.y: 2.6
                scale.x: 2.6
                materials: blue_Pawns_Material
                eulerRotation.x: -90

                SpotLight {
                    id: blue_light1
                    x: 0.091
                    y: -0.016
                    opacity: 1
                    visible: false
                    color: "#fdffffff"
                    z: 15.50231
                    PropertyAnimation on brightness{
                        running: true
                        loops: Animation.Infinite
                        duration: 850
                        to:15
                        from: 1
                    }
                    coneAngle: 10
                    castsShadow: false
                    brightness: 0.1
                    ambientColor: "#000000"
                }
            }

            Model {
                id: blue_pawn2

                x: 48.109
                y: 7.667
                source: "meshes/chess_Pawn_0.mesh"
                z: 67.42081
                scale.z: 2.6
                scale.y: 2.6
                scale.x: 2.6
                materials: blue_Pawns_Material
                eulerRotation.x: -90

                SpotLight {
                    id: blue_light2
                    x: 0.091
                    y: -0.016
                    opacity: 1
                    visible: false
                    color: "#fdffffff"
                    z: 16.09289
                    PropertyAnimation on brightness{
                        running: true
                        loops: Animation.Infinite
                        duration: 850
                        to:15
                        from: 1
                    }
                    coneAngle: 10
                    castsShadow: false
                    brightness: 0.1
                    ambientColor: "#000000"
                }


            }

            Model {
                id: blue_pawn3
                x: 39.281
                y: 7.891
                source: "meshes/chess_Pawn_0.mesh"
                z: 68.34415
                scale.z: 2.6
                scale.y: 2.6
                scale.x: 2.6
                materials: blue_Pawns_Material
                eulerRotation.x: -90
                SpotLight {
                    id: blue_light3
                    x: 0.091
                    y: -0.016
                    opacity: 1
                    visible: false
                    color: "#fdffffff"
                    z: 16.06238
                    PropertyAnimation on brightness{
                        running: true
                        loops: Animation.Infinite
                        duration: 850
                        to:15
                        from: 1
                    }
                    coneAngle: 10
                    castsShadow: false
                    brightness: 0.1
                    ambientColor: "#000000"
                }


            }

            Model {
                id: blue_pawn4
                x: 57.166
                y: 7.974
                z: 68.48412
                //x: 0.24
                //y: -0.232
                source: "meshes/chess_Pawn_0.mesh"
                //z: -11.92906
                scale.z: 2.6
                scale.y: 2.6
                scale.x: 2.6
                materials: blue_Pawns_Material
                eulerRotation.x: -90

                SpotLight {
                    id: blue_light4
                    x: 0.091
                    y: -0.016
                    opacity: 1
                    visible: false
                    color: "#fdffffff"
                    z: 16.06238
                    PropertyAnimation on brightness{
                        running: true
                        loops: Animation.Infinite
                        duration: 850
                        to:15
                        from: 1
                    }
                    coneAngle: 10
                    castsShadow: false
                    brightness: 0.1
                    ambientColor: "#000000"
                }
            }
        }


    }

    Node {
        id: __materialLibrary__


        PrincipledMaterial {
            id: plates_Material
            objectName: "plates_Material"
            roughness: 10
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
            baseColor: "#85cac7"
        }

        PrincipledMaterial {
            id: red_Pawns_Material
            objectName: "blue_Pawns_Material"
            roughness: 10
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
            baseColor: "#ff2c2c"
        }

        PrincipledMaterial {
            id: blue_Pawns_Material
            objectName: "blue_Pawns_Material"
            roughness: 10
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
            baseColor: "#4244b6"
        }

        PrincipledMaterial {
            id: green_Pawns_Material
            objectName: "green_Pawns_Material"
            roughness: 10
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
            baseColor: "#55b03d"
        }

        PrincipledMaterial {
            id: yellow_Pawns_Material
            objectName: "yellow_Pawns_Material"
            roughness: 10
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
            baseColor: "#e9e842"
        }


        PrincipledMaterial {
            id: ludo_blinn6_material
            baseColorMap: ludo_blinn6_Base_Color
            objectName: "ludo_blinn6_material"
            //baseColor: "#d8a8a8"

            Texture {
                id: ludo_blinn6_Base_Color
                source: "images/ludo_blinn6_Base_Color.jpg"
            }
        }

        PrincipledMaterial {
            id: ludo_blinn4_material
            objectName: "ludo_blinn4_material"
            baseColor: "#ff666666"
        }

        PrincipledMaterial {
            id: ludo_blinn3_material
            objectName: "ludo_blinn3_material"
            baseColor: "#ff666666"
        }

        PrincipledMaterial {
            id: ludo_blinn2_material
            objectName: "ludo_blinn2_material"
            baseColor: "#ff666666"
        }

        PrincipledMaterial {
            id: ludo_lambert3_material
            baseColorMap: ludo_lambert3_Base_Color
            objectName: "ludo_lambert3_material"
            baseColor: "#ff666666"

            Texture {
                id: ludo_lambert3_Base_Color
                source: "images/ludo_lambert3_Base_Color.jpg"
            }

        }

        PrincipledMaterial {
            id: ludo_lambert2_material
            baseColorMap: ludo_lambert2_Base_Color
            objectName: "ludo_lambert2_material"
            baseColor: "#ffcccccc"

            Texture {
                id: ludo_lambert2_Base_Color
                source: "images/ludo_lambert2_Base_Color.jpg"
            }
        }

        PrincipledMaterial {
            id: ludo_blinn5_material
            objectName: "ludo_blinn5_material"
            baseColor: "#ff666666"

        }
    }

    Component.onCompleted: {
        socket_comm.startLudo();
    }


}

// Animations:



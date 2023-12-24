import QtQuick
import Qt3D.Render
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
                    id: ludo_ludo3
                    x: -0.016
                    y: -0.008
                    source: "meshes/ludo_ludo.mesh"
                    z: -0.19757
                    materials: ludo_blinn6_material
                }
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


            Node {
                id: plates
                visible: false

                Component.onCompleted: {
                    var planesCoordinates = [];
                    for(var i=0; i<plates.children.length; ++i){
                        var planeCoordinate= plates.children[i].position;
                        planesCoordinates.push(planeCoordinate);
                    }
                    ludoController.setPlaneCoordinates(planesCoordinates);

                }

                Model {

                    id: plane
                    objectName: "Nodeisteamk"
                    x: -7.649
                    y: 3.836
                    source: "#Rectangle"
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    z: 43.58257
                    eulerRotation.x: -90
                    materials: plates_Material
                }

                Model {
                    id: plane1
                    x: -7.649
                    y: 3.836
                    source: "#Rectangle"
                    z: 36.39416
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane2
                    x: -7.649
                    y: 3.836
                    source: "#Rectangle"
                    z: 29.18727
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane3
                    x: -7.649
                    y: 3.836
                    z: 22.07148
                    source: "#Rectangle"
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane4
                    x: -7.649
                    y: 3.836
                    source: "#Rectangle"
                    z: 14.70286
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane5
                    x: 6.851
                    y: 3.836
                    source: "#Rectangle"
                    z: 43.58257
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane6
                    x: 6.851
                    y: 3.836
                    source: "#Rectangle"
                    z: 36.39416
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane7
                    x: 6.851
                    y: 3.836
                    source: "#Rectangle"
                    z: 29.18727
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane8
                    x: 6.851
                    y: 3.836
                    source: "#Rectangle"
                    z: 22.07148
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane9
                    x: 6.851
                    y: 3.836
                    source: "#Rectangle"
                    z: 14.70286
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane10
                    x: 7.337
                    y: 3.836
                    source: "#Rectangle"
                    z: -16.07429
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane11
                    x: 7.337
                    y: 3.836
                    source: "#Rectangle"
                    z: -23.2627
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane12
                    x: 7.337
                    y: 3.836
                    source: "#Rectangle"
                    z: -30.46959
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane13
                    x: 7.337
                    y: 3.836
                    source: "#Rectangle"
                    z: -37.58538
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane14
                    x: 7.337
                    y: 3.836
                    source: "#Rectangle"
                    z: -44.954
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane15
                    x: -7.649
                    y: 3.836
                    source: "#Rectangle"
                    z: -15.88416
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane16
                    x: -7.649
                    y: 3.836
                    source: "#Rectangle"
                    z: -23.07257
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane17
                    x: -7.649
                    y: 3.836
                    source: "#Rectangle"
                    z: -30.27946
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane18
                    x: -7.649
                    y: 3.836
                    source: "#Rectangle"
                    z: -37.39525
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane19
                    x: -7.649
                    y: 3.836
                    source: "#Rectangle"
                    z: -44.76387
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: plane20
                    x: 14.836
                    y: 3.836
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
                    id: plane21
                    x: 22.024
                    y: 3.836
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
                    id: plane22
                    x: 29.231
                    y: 3.836
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
                    id: plane23
                    x: 36.347
                    y: 3.836
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
                    id: plane24
                    x: 43.716
                    y: 3.836
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
                    id: plane25
                    x: 14.836
                    y: 3.836
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
                    id: plane26
                    x: 22.024
                    y: 3.836
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
                    id: plane27
                    x: 29.231
                    y: 3.836
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
                    id: plane28
                    x: 36.347
                    y: 3.836
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
                    id: plane29
                    x: 43.716
                    y: 3.836
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
                    id: plane30
                    x: -45.098
                    y: 3.836
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
                    id: plane31
                    x: -37.91
                    y: 3.836
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
                    id: plane32
                    x: -30.703
                    y: 3.836
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
                    id: plane33
                    x: -23.587
                    y: 3.836
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
                    id: plane34
                    x: -16.218
                    y: 3.836
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
                    id: plane35
                    x: -45.254
                    y: 3.836
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
                    id: plane36
                    x: -38.066
                    y: 3.836
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
                    id: plane37
                    x: -30.859
                    y: 3.836
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
                    id: plane38
                    x: -23.743
                    y: 3.836
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
                    id: plane39
                    x: -16.374
                    y: 3.836
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
                    id: plane40
                    x: -53.046
                    y: 3.836
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
                    id: plane41
                    x: -53.061
                    y: 3.836
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
                    id: plane42
                    x: -53.077
                    y: 3.836
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
                    id: plane43
                    x: 51.219
                    y: 3.836
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
                    id: plane44
                    x: 51.204
                    y: 3.836
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
                    id: plane45
                    x: 51.188
                    y: 3.836
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
                    id: plane46
                    x: 7.112
                    y: 3.836
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
                    id: plane47
                    x: -0.506
                    y: 3.836
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
                    id: plane48
                    x: -8.361
                    y: 3.836
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
                    id: plane49
                    x: 7.112
                    y: 3.836
                    source: "#Rectangle"
                    z: 51.18004
                    scale.z: 0.06151
                    scale.y: 0.06151
                    scale.x: 0.06624
                    materials: plates_Material
                    eulerRotation.z: 0
                    eulerRotation.y: 179.81319
                    eulerRotation.x: -90
                }

                Model {
                    id: plane50
                    x: -0.506
                    y: 3.836
                    source: "#Rectangle"
                    z: 51.15552
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
                    x: -8.361
                    y: 3.836
                    source: "#Rectangle"
                    z: 51.1297
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
                id: red_Pawns
                x: -28.142
                y: 8.763
                scale.z: 1
                scale.y: 1
                scale.x: 1
                z: 39.42045
                Model {
                    id: red_pawn1
                    x: 0
                    y: -0.987
                    source: "meshes/chess_Pawn_0.mesh"
                    scale.z: 2.6
                    z: 0
                    scale.y: 2.6
                    scale.x: 2.6
                    eulerRotation.x: -90
                    materials: red_Pawns_Material
                }

                Model {
                    id: red_pawn2
                    x: 0.24
                    y: -0.232
                    source: "meshes/chess_Pawn_0.mesh"
                    z: -11.92906
                    scale.z: 2.6
                    scale.y: 2.6
                    scale.x: 2.6
                    materials: red_Pawns_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: red_pawn3
                    x: -11.642
                    y: -1.058
                    source: "meshes/chess_Pawn_0.mesh"
                    z: -0.07187
                    scale.z: 2.6
                    scale.y: 2.6
                    scale.x: 2.6
                    materials: red_Pawns_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: red_pawn4
                    x: -11.883
                    y: -0.811
                    source: "meshes/chess_Pawn_0.mesh"
                    z: -12.21353
                    scale.z: 2.6
                    scale.y: 2.6
                    scale.x: 2.6
                    materials: red_Pawns_Material
                    eulerRotation.x: -90
                }
            }

            Node {
                id: blue_Pawns
                x: 0
                y: 0
                z: 0
                scale.z: 1
                scale.y: 1
                scale.x: 1






                Model {
                    id: blue_pawn1

                    x: 27.039
                    y: 7.667
                    source: "meshes/chess_Pawn_0.mesh"
                    z: 27.27528
                    scale.z: 2.6
                    scale.y: 2.6
                    scale.x: 2.6
                    materials: blue_Pawns_Material
                    eulerRotation.x: -90




                    Behavior on x{

                        NumberAnimation {
                            duration: 5000
                        }
                    }
                    Behavior on z{
                        NumberAnimation {
                            duration: 5000
                        }
                    }



                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        acceptedButtons: Qt.AllButtons


                        onClicked: {
                            // Your onClick logic here
                            console.log("blue_pawn1 clicked!");
                        }
                    }


                }

                NumberAnimation {
                    target: blue_pawn1
                    id: yAnimation
                    property: "y"
                    duration: 5000
                }











                Model {
                    id: blue_pawn2
                    x: 39.339
                    y: 7.974
                    z: 27.27873
                    //x: 0.24
                    //y: -0.232
                    source: "meshes/chess_Pawn_0.mesh"
                    //z: -11.92906
                    scale.z: 2.6
                    scale.y: 2.6
                    scale.x: 2.6
                    materials: blue_Pawns_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: blue_pawn3
                    x: 27.584
                    y: 8.977
                    source: "meshes/chess_Pawn_0.mesh"
                    z: 39.51197
                    scale.z: 2.6
                    scale.y: 2.6
                    scale.x: 2.6
                    materials: blue_Pawns_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: blue_pawn4
                    x: 39.281
                    y: 7.891
                    source: "meshes/chess_Pawn_0.mesh"
                    z: 38.93591
                    scale.z: 2.6
                    scale.y: 2.6
                    scale.x: 2.6
                    materials: blue_Pawns_Material
                    eulerRotation.x: -90
                }
                Connections{
                    target: ludoController
                    onPawnMoved : {
                        blue_pawn1.x= position.x;
                        blue_pawn1.z= position.z;

                    }
                }





            }

            Node {
                id: yellow_Pawns
                x: 38.56
                y: 8.763
                z: -27.94774
                scale.z: 1
                scale.y: 1
                scale.x: 1
                Model {
                    id: yellow_Pawn1
                    x: 0
                    y: -0.987
                    source: "meshes/chess_Pawn_0.mesh"
                    z: 0
                    scale.z: 2.6
                    scale.y: 2.6
                    scale.x: 2.6
                    materials: yellow_Pawns_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: yellow_Pawn2
                    x: 0.24
                    y: -0.232
                    source: "meshes/chess_Pawn_0.mesh"
                    z: -11.92906
                    scale.z: 2.6
                    scale.y: 2.6
                    scale.x: 2.6
                    materials: yellow_Pawns_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: yellow_Pawn3
                    x: -11.642
                    y: -1.058
                    source: "meshes/chess_Pawn_0.mesh"
                    z: -0.07187
                    scale.z: 2.6
                    scale.y: 2.6
                    scale.x: 2.6
                    materials: yellow_Pawns_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: yellow_Pawn4
                    x: -11.883
                    y: -0.811
                    source: "meshes/chess_Pawn_0.mesh"
                    z: -12.21353
                    scale.z: 2.6
                    scale.y: 2.6
                    scale.x: 2.6
                    materials: yellow_Pawns_Material
                    eulerRotation.x: -90
                }
            }

            Node {
                id: green_Pawns
                x: -28.454
                y: 8.763
                z: -27.68527
                scale.z: 1
                scale.y: 1
                scale.x: 1
                Model {
                    id: green_pawn1
                    x: 0
                    y: -0.987
                    source: "meshes/chess_Pawn_0.mesh"
                    z: 0
                    scale.z: 2.6
                    scale.y: 2.6
                    scale.x: 2.6
                    materials: green_Pawns_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: green_pawn2
                    x: 0.24
                    y: -0.232
                    source: "meshes/chess_Pawn_0.mesh"
                    z: -11.92906
                    scale.z: 2.6
                    scale.y: 2.6
                    scale.x: 2.6
                    materials: green_Pawns_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: green_pawn3
                    x: -11.642
                    y: -1.058
                    source: "meshes/chess_Pawn_0.mesh"
                    z: -0.07187
                    scale.z: 2.6
                    scale.y: 2.6
                    scale.x: 2.6
                    materials: green_Pawns_Material
                    eulerRotation.x: -90
                }

                Model {
                    id: green_pawn4
                    x: -11.883
                    y: -0.811
                    source: "meshes/chess_Pawn_0.mesh"
                    z: -12.21353
                    scale.z: 2.6
                    scale.y: 2.6
                    scale.x: 2.6
                    materials: green_Pawns_Material
                    eulerRotation.x: -90
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
                baseColor: "#ff666666"

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


    }

    // Animations:


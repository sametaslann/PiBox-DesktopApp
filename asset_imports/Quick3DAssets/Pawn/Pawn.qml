import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: root_material
        roughness: 0.6000000238418579
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Node {
        id: sketchfab_model
        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        scale.x: 0.333333
        scale.y: 0.333333
        scale.z: 0.333333
        Node {
            id: root
            Node {
                id: lamp
                x: 4.076250076293945
                y: 1.0054500102996826
                z: 5.903860092163086
                rotation: Qt.quaternion(0.570949, 0.169074, 0.272171, 0.75588)
                scale.x: 0.999998
                scale.y: 0.999996
                scale.z: 0.999996
                Node {
                    id: lamp4
                }
            }
            Node {
                id: chess_Pawn
                z: 1.7796900272369385
                Model {
                    id: chess_Pawn_0
                    source: "meshes/chess_Pawn_0.mesh"
                    materials: root_material
                }
            }
        }
    }

    // Animations:
}

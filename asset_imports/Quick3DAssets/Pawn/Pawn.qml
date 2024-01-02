import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources

    // Nodes:




            Node {
                id: chess_Pawn
                z: 1.7796900272369385
                Model {
                    id: chess_Pawn_0
                    source: "meshes/chess_Pawn_0.mesh"
                    materials: root_material
                }
            }



    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: root_material
            objectName: "root_material"
            roughness: 0.6000000238418579
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
    }

    // Animations:
}

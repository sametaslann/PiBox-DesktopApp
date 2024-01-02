import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    Texture {
        id: mesa_80cm_Wood_Cherry_Original_jpg_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        // Source texture path expected: maps/Wood_Cherry_Original.jpg
        // Skipped property: source, reason: Failed to find texture at c:/Users/90507/Desktop/Mesa 80cm/Wood_Cherry_Original.jpg
    }
    Texture {
        id: mesa_80cm_Wood_Veneer_02_jpg_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        // Source texture path expected: maps/Wood_Veneer_02.jpg
        // Skipped property: source, reason: Failed to find texture at c:/Users/90507/Desktop/Mesa 80cm/Wood_Veneer_02.jpg
    }

    // Nodes:
    Node {
        id: mesa_80cm_obj
        Model {
            id: mesh1_Perna_mesa_Y1_Base_mesa1_Model
            source: "meshes/mesh1_Perna_mesa_Y1_Base_mesa1_Model.mesh"
            materials: [
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material
            ]
        }
        Node {
            id: mesh2_Perna_mesa_Y1_Base_mesa1_Model
        }
        Model {
            id: mesh3_Perna_mesa_Y2_Base_mesa1_Model
            source: "meshes/mesh3_Perna_mesa_Y2_Base_mesa1_Model.mesh"
            materials: [
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material
            ]
        }
        Node {
            id: mesh4_Perna_mesa_Y2_Base_mesa1_Model
        }
        Model {
            id: mesh5_Perna_mesa_Y3_Base_mesa1_Model
            source: "meshes/mesh5_Perna_mesa_Y3_Base_mesa1_Model.mesh"
            materials: [
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material
            ]
        }
        Node {
            id: mesh6_Perna_mesa_Y3_Base_mesa1_Model
        }
        Model {
            id: mesh7_Perna_mesa_Y4_Base_mesa1_Model
            source: "meshes/mesh7_Perna_mesa_Y4_Base_mesa1_Model.mesh"
            materials: [
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material
            ]
        }
        Node {
            id: mesh8_Perna_mesa_Y4_Base_mesa1_Model
        }
        Model {
            id: mesh9_Model
            source: "meshes/mesh9_Model.mesh"
            materials: [
                wood_Veneer_02_material,
                wood_Cherry_Original_material,
                wood_Veneer_02_material,
                wood_Cherry_Original_material,
                wood_Veneer_02_material,
                wood_Cherry_Original_material,
                wood_Veneer_02_material,
                frontColor_material,
                backColor_material,
                wood_Veneer_02_material,
                backColor_material,
                wood_Cherry_Original_material,
                backColor_material,
                wood_Veneer_02_material,
                wood_Cherry_Original_material,
                wood_Veneer_02_material,
                backColor_material,
                wood_Veneer_02_material,
                backColor_material,
                wood_Veneer_02_material,
                wood_Cherry_Original_material,
                wood_Veneer_02_material,
                wood_Cherry_Original_material,
                wood_Veneer_02_material,
                wood_Cherry_Original_material,
                wood_Veneer_02_material,
                frontColor_material,
                wood_Veneer_02_material,
                backColor_material
            ]
        }
        Node {
            id: mesh10_Model
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: wood_Cherry_Original_material
            objectName: "wood_Cherry_Original_material"
            baseColor: "#185820"
            baseColorMap: mesa_80cm_Wood_Cherry_Original_jpg_texture
            roughness: 1
            indexOfRefraction: 1
            Texture {
                id: wood
                source: "images/wood.jpeg"
                positionU: 0
                autoOrientation: true
                flipU: false
                flipV: false
            }
        }

        PrincipledMaterial {
            id: backColor_material
            objectName: "backColor_material"
            baseColor: "#ffa4b2bb"
            roughness: 1
            indexOfRefraction: 1
        }

        PrincipledMaterial {
            id: wood_Veneer_02_material
            objectName: "wood_Veneer_02_material"
            baseColor: "#000000"
            baseColorMap: wood
            roughness: 1
            indexOfRefraction: 1
        }

        PrincipledMaterial {
            id: frontColor_material
            baseColor: "#f7f7f7"
            objectName: "frontColor_material"
            roughness: 1
            indexOfRefraction: 1
        }
    }

    DirectionalLight {
        id: lightDirectional
        x: 554.082
        y: 1554.856
        eulerRotation.z: 0.00002
        eulerRotation.y: -0.00001
        eulerRotation.x: -65.54977
        z: 868.44012
    }

    // Animations:
}

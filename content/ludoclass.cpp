#include "ludoclass.h"
#include <QQuickItem>

LudoClass::LudoClass(QQmlApplicationEngine &engine) : engine(engine) {}
{

}


void LudoClass::init() {
    // Access the root QML item
    QQuickItem *rootItem = qobject_cast<QQuickItem *>(engine.rootObjects().first());
    if (rootItem) {
        // Access and transform 3D objects as needed
        // Example: rootItem->setProperty("rotation", 45); // Rotate by 45 degrees
    }
}

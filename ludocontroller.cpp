#include "ludocontroller.h"



LudoController::LudoController(QObject *parent)
    : QObject(parent)
{


    //QQmlEngine engine;
    //QQmlComponent component(&engine, QUrl(QStringLiteral("qrc:/qt/qml/Quick3DAssets/Ludo0/Ludo0.qml")));
    //QObject *object = component.create();

    //QObject *rect = object->findChild<QObject*>("Nodeisteamk");
    //if (rect)
    //{
        //qDebug() << rect->objectName().toStdString() << "\n";
      //  rect->setProperty("x", 100);
       // rect->setProperty("y", 100);
    //}

    m_cameraPosition = QVector3D(50.0, 50.0, 20.0);
}

QVector3D LudoController::cameraPosition() const
{
    qDebug("Blue pawn clicked");
    return m_cameraPosition;
}

void LudoController::setCameraPosition(const QVector3D &position)
{
    if (m_cameraPosition != position)
    {
        m_cameraPosition = position;
        emit cameraPositionChanged();
    }
}

void LudoController::setPlaneCoordinates(const QVector<QVector3D>& newPlaneCoordinates)
{
    qDebug() << "Coordinates received" << "\n";
    this->planeCoordinates = newPlaneCoordinates;
}

size_t LudoController::getPlaneCoordinatesSize()
{
    return planeCoordinates.size();
}

void LudoController::movePawn(const char* pawnName, const char* destination)
{
    try {
        int intValue = std::stoi(destination);
        emit pawnMoved(this->planeCoordinates[intValue]);


    } catch (const std::invalid_argument& e) {
        qWarning() << "Invalid argument: " << e.what();
    } catch (const std::out_of_range& e) {
        qWarning() << "Out of range: " << e.what();
    }


}

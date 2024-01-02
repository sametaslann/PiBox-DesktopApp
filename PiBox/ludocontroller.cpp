#include "ludocontroller.h"



LudoController::LudoController(QObject *parent)
    : QObject(parent)
{


}

QQmlListProperty<QObject> LudoController::getPlates()
{
    return QQmlListProperty<QObject>(this, &plates);
}


QQmlListProperty<QObject> LudoController::getPawns()
{
    return QQmlListProperty<QObject>(this, &pawns);
}

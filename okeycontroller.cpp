#include "okeycontroller.h"
#include <QQuaternion>
#include <QQmlEngine>
#include <QQmlApplicationEngine>

#include <QtMath>

#include <QVector3D>


OkeyController::OkeyController(QObject *parent)
    : QObject{parent}
{

}

QQmlListProperty<QObject> OkeyController::getPlayer1Cells()
{
    return QQmlListProperty<QObject>(this, &player1Cells);
}


QQmlListProperty<QObject> OkeyController::getPlayer2Cells()
{
    return QQmlListProperty<QObject>(this, &player2Cells);
}


QQmlListProperty<QObject> OkeyController::getPlayer3Cells()
{
    return QQmlListProperty<QObject>(this, &player3Cells);
}


QQmlListProperty<QObject> OkeyController::getPlayer4Cells()
{
    return QQmlListProperty<QObject>(this, &player4Cells);
}


QQmlListProperty<QObject> OkeyController::getRedTiles()
{
    return QQmlListProperty<QObject>(this, &redTiles);
}

QQmlListProperty<QObject> OkeyController::getBlueTiles()
{
    return QQmlListProperty<QObject>(this, &blueTiles);
}



QQmlListProperty<QObject> OkeyController::getYellowTiles()
{
    return QQmlListProperty<QObject>(this, &yellowTiles);
}

QQmlListProperty<QObject> OkeyController::getBlackTiles()
{
    return QQmlListProperty<QObject>(this, &blackTiles);
}

QQmlListProperty<QObject> OkeyController::getFakeTiles()
{
    return QQmlListProperty<QObject>(this, &fakeTiles);
}

void OkeyController::moveTile()
{
    qDebug() << "moveTile";
    qDebug() <<"rotation:" <<player2Cells.at(5)->property("rotation");




    redTiles.at(4)->setProperty("x", player2Cells.at(5)->property("x"));
    redTiles.at(4)->setProperty("y", player2Cells.at(5)->property("y"));
    redTiles.at(4)->setProperty("z", player2Cells.at(5)->property("z"));
    redTiles.at(4)->setProperty("rotation", player2Cells.at(5)->property("rotation"));





    //QQmlListProperty<QObject> player1Cells = getPlayer1Cells();

    //QObject *child = childrenList.at(&childrenList, );

    //for (int i = 0; i < childrenList.count(&childrenList); ++i) {
        //QObject *child = childrenList.at(&childrenList, i);
        //qDebug() <<" x:"<<child->property("x");
    //}
}

void OkeyController::setPlayer1Cells()
{
    QQmlListProperty<QObject> childrenList = getPlayer1Cells();
    for (int i = 0; i < childrenList.count(&childrenList); ++i) {
        QObject *child = childrenList.at(&childrenList, i);
        qDebug() <<" x:"<<child->property("x");
    }
}

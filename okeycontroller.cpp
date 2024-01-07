#include "okeycontroller.h"
#include <QQuaternion>
#include <QQmlEngine>
#include <QQmlApplicationEngine>

#include <QtMath>

#include <QVector3D>


OkeyController::OkeyController(QObject *parent)
    : QObject{parent}
{

    setPlayer1Text("empty");
    setPlayer2Text("empty");
    setPlayer3Text("empty");
    setPlayer4Text("empty");

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


QQmlListProperty<QObject> OkeyController::getThrowns()
{
    return QQmlListProperty<QObject>(this, &throwns);
}

QQmlListProperty<QObject> OkeyController::getspotLights()
{
    return QQmlListProperty<QObject>(this, &spotLights);
}

QObject *OkeyController::getJokerTile()
{
    return jokerTile;
}



void OkeyController::setJokerTile(QObject *object)
{

    if (jokerTile != object) {
        jokerTile = object;
    }
}

QString OkeyController::getPlayer1Text() const
{
    return player1Text;
}

void OkeyController::setPlayer1Text(const QString &text)
{
    if (player1Text != text) {
        player1Text = text;
        emit player1TextChanged();
    }
}

QString OkeyController::getPlayer2Text() const
{
    return player2Text;

}

void OkeyController::setPlayer2Text(const QString &text)
{
    if (player2Text != text) {
        player2Text = text;
        emit player2TextChanged();
    }
}


QString OkeyController::getPlayer3Text() const
{
    return player3Text;
}

void OkeyController::setPlayer3Text(const QString &text)
{
    if (player3Text != text) {
        player3Text = text;
        emit player3TextChanged();
    }
}


QString OkeyController::getPlayer4Text() const
{
    return player4Text;
}

void OkeyController::setPlayer4Text(const QString &text)
{
    if (player4Text != text) {
        player4Text = text;
        emit player4TextChanged();
    }
}


QStringList OkeyController::getNotifications()
{
    return notifications;
}






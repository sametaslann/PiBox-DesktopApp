#include "ludocontroller.h"



LudoController::LudoController(QObject *parent)
    : QObject(parent)
{

    setPlayer1Text("empty");
    setPlayer2Text("empty");
    setPlayer3Text("empty");
    setPlayer4Text("empty");

    progressBar.append(0);
    progressBar.append(0);
    progressBar.append(0);
    progressBar.append(0);

}

QQmlListProperty<QObject> LudoController::getPlates()
{
    return QQmlListProperty<QObject>(this, &plates);
}


QQmlListProperty<QObject> LudoController::getPawns()
{
    return QQmlListProperty<QObject>(this, &pawns);

}

QObject *LudoController::getDice()
{
    return dice;
}


void LudoController::setDice(QObject *object)
{

    if (dice != object) {
        dice = object;

    }
}

QStringList LudoController::getNotifications()
{
    return notifications;
}

QList<double> LudoController::getProgressBar() const {
    return progressBar;
}


QString LudoController::getPlayer1Text() const
{
    return player1Text;
}

void LudoController::setPlayer1Text(const QString &text)
{
    if (player1Text != text) {
        player1Text = text;
        emit player1TextChanged();
    }
}

QString LudoController::getPlayer2Text() const
{
    return player2Text;

}

void LudoController::setPlayer2Text(const QString &text)
{
    if (player2Text != text) {
        player2Text = text;
        emit player2TextChanged();
    }
}


QString LudoController::getPlayer3Text() const
{
    return player3Text;
}

void LudoController::setPlayer3Text(const QString &text)
{
    if (player3Text != text) {
        player3Text = text;
        emit player3TextChanged();
    }
}


QString LudoController::getPlayer4Text() const
{
    return player4Text;
}

void LudoController::setPlayer4Text(const QString &text)
{
    if (player4Text != text) {
        player4Text = text;
        emit player4TextChanged();
    }
}

#ifndef LUDOCONTROLLER_H
#define LUDOCONTROLLER_H

#include <QObject>
#include <QVector3D>
#include <QQuickItem>
#include <QQuickView>
#include <QQmlApplicationEngine>
#include "QQmlProperty"
class LudoController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QQmlListProperty<QObject> plates READ getPlates NOTIFY platesChanged)
    Q_PROPERTY(QQmlListProperty<QObject> pawns READ getPawns NOTIFY pawnsChanged)
    Q_PROPERTY(QObject* dice READ getDice WRITE setDice NOTIFY diceChanged)

    //notifications
    Q_PROPERTY(QStringList notifications READ getNotifications NOTIFY notificationsChanged)

    //progress bars
    Q_PROPERTY(QList<double> progressBar READ getProgressBar NOTIFY progressBarChanged)

    //texts
    Q_PROPERTY(QString player1Text READ getPlayer1Text WRITE setPlayer1Text NOTIFY player1TextChanged)
    Q_PROPERTY(QString player2Text READ getPlayer2Text WRITE setPlayer2Text NOTIFY player2TextChanged)
    Q_PROPERTY(QString player3Text READ getPlayer3Text WRITE setPlayer3Text NOTIFY player3TextChanged)
    Q_PROPERTY(QString player4Text READ getPlayer4Text WRITE setPlayer4Text NOTIFY player4TextChanged)


public:
    explicit LudoController(QObject *parent = nullptr);


    QList<QObject*> plates;
    QList<QObject*> pawns;

    QQmlListProperty<QObject> getPlates();
    QQmlListProperty<QObject> getPawns();

    QObject *getDice();
    void setDice(QObject *object);
    QObject* dice;


    //notifications
    QStringList notifications;
    QStringList getNotifications();

    //progress bars
    QList<double> progressBar;
    QList<double> getProgressBar() const;

    //Player texts
    QString getPlayer1Text() const;
    QString getPlayer2Text() const;
    QString getPlayer3Text() const;
    QString getPlayer4Text() const;

    void setPlayer1Text(const QString &text);
    void setPlayer2Text(const QString &text);
    void setPlayer3Text(const QString &text);
    void setPlayer4Text(const QString &text);

    QString player1Text;
    QString player2Text;
    QString player3Text;
    QString player4Text;

public slots:

signals:
    void platesChanged();
    void pawnsChanged();
    void diceChanged();
    void notificationsChanged();
    void progressBarChanged();
    void popupOpen(QString status, QString player);

    //player texts
    void player1TextChanged();
    void player2TextChanged();
    void player3TextChanged();
    void player4TextChanged();

private:

};

#endif // LUDOCONTROLLER_H

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


public:
    explicit LudoController(QObject *parent = nullptr);


    QList<QObject*> plates;
    QList<QObject*> pawns;

    QQmlListProperty<QObject> getPlates();
    QQmlListProperty<QObject> getPawns();

    QObject *getDice();
    void setDice(QObject *object);
    QObject* dice;


public slots:

signals:
    void platesChanged();
    void pawnsChanged();
    void diceChanged();

private:

};

#endif // LUDOCONTROLLER_H

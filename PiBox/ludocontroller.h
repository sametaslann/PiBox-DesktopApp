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



public:
    explicit LudoController(QObject *parent = nullptr);

    QList<QObject*> plates;
    QList<QObject*> pawns;

    QQmlListProperty<QObject> getPlates();
    QQmlListProperty<QObject> getPawns();


public slots:

signals:
    void platesChanged();
    void pawnsChanged();



private:


};

#endif // LUDOCONTROLLER_H

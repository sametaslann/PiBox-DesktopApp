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
    QML_ELEMENT
    Q_PROPERTY(QVector3D cameraPosition READ cameraPosition WRITE setCameraPosition NOTIFY cameraPositionChanged)
    //Q_PROPERTY(QQuickItem *plates READ getPlates NOTIFY platesChanged)


public:
    explicit LudoController(QObject *parent = nullptr);


    void printInfo();

    QVector3D cameraPosition() const;
    void setCameraPosition(const QVector3D &position);
    void movePawn();
    size_t getPlaneCoordinatesSize();

public slots:
    void setPlaneCoordinates(const QVector<QVector3D> &newPlaneCoordinates);

signals:
    void cameraPositionChanged();
    void pawnMoved(const QVector3D &position);

private:
    QVector3D m_cameraPosition;
    QVector<QVector3D> planeCoordinates;
};

#endif // LUDOCONTROLLER_H

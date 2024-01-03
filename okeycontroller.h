#ifndef OKEYCONTROLLER_H
#define OKEYCONTROLLER_H

#include <QObject>
#include <QVector3D>

#include <QQuickItem>
class OkeyController : public QObject
{
    Q_OBJECT




    Q_PROPERTY(QQmlListProperty<QObject> player1Cells READ getPlayer1Cells NOTIFY player1CellsChanged)
    Q_PROPERTY(QQmlListProperty<QObject> player2Cells READ getPlayer2Cells NOTIFY player2CellsChanged)
    Q_PROPERTY(QQmlListProperty<QObject> player3Cells READ getPlayer3Cells NOTIFY player3CellsChanged)
    Q_PROPERTY(QQmlListProperty<QObject> player4Cells READ getPlayer4Cells NOTIFY player4CellsChanged)



    Q_PROPERTY(QQmlListProperty<QObject> redTiles READ getRedTiles NOTIFY redTilesChanged)
    Q_PROPERTY(QQmlListProperty<QObject> blueTiles READ getBlueTiles NOTIFY blueTilesChanged)
    Q_PROPERTY(QQmlListProperty<QObject> yellowTiles READ getYellowTiles NOTIFY yellowTilesChanged)
    Q_PROPERTY(QQmlListProperty<QObject> blackTiles READ getBlackTiles NOTIFY blackTilesChanged)
    Q_PROPERTY(QQmlListProperty<QObject> fakeTiles READ getFakeTiles NOTIFY fakeTilesChanged)

    //Q_PROPERTY(QQmlListProperty<QObject> thrown1 READ getThrown1 NOTIFY thrown1Changed)
   // Q_PROPERTY(QQmlListProperty<QObject> thrown2 READ getThrown2 NOTIFY thrown2Changed)
    //Q_PROPERTY(QQmlListProperty<QObject> thrown3 READ getThrown3 NOTIFY thrown3Changed)
    //Q_PROPERTY(QQmlListProperty<QObject> thrown4 READ getThrown4 NOTIFY thrown4Changed)


public:
    explicit OkeyController(QObject *parent = nullptr);

    QQmlListProperty<QObject> getPlayer1Cells();
    QQmlListProperty<QObject> getPlayer2Cells();
    QQmlListProperty<QObject> getPlayer3Cells();
    QQmlListProperty<QObject> getPlayer4Cells();



    QQmlListProperty<QObject> getRedTiles();
    QQmlListProperty<QObject> getBlueTiles();
    QQmlListProperty<QObject> getYellowTiles();
    QQmlListProperty<QObject> getBlackTiles();
    QQmlListProperty<QObject> getFakeTiles();

    //QQmlListProperty<QObject> getThrown1();
    //QQmlListProperty<QObject> getThrown2();
    //QQmlListProperty<QObject> getThrown3();
    //QQmlListProperty<QObject> getThrown4();
    QList<QObject*> player1Cells;
    QList<QObject*> player2Cells;
    QList<QObject*> player3Cells;
    QList<QObject*> player4Cells;


    QList<QObject*> redTiles;
    QList<QObject*> blueTiles;
    QList<QObject*> yellowTiles;
    QList<QObject*> blackTiles;
    QList<QObject*> fakeTiles;


public slots:
    void setPlayer1Cells();
    void moveTile();
private:


    //QList<QObject*> thrown1;
    //QList<QObject*> thrown2;
    //QList<QObject*> thrown3;
    //QList<QObject*> thrown4;


signals:
    void player1CellsChanged(); // dummy
    void player2CellsChanged(); // dummy
    void player3CellsChanged(); // dummy
    void player4CellsChanged(); // dummy
    void redTilesChanged();     // dummy
    void blueTilesChanged();    // dummy
    void yellowTilesChanged();  // dummy
    void blackTilesChanged();   // dummy
    void fakeTilesChanged();    // dummy


};

#endif // OKEYCONTROLLER_H

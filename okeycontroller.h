#ifndef OKEYCONTROLLER_H
#define OKEYCONTROLLER_H

#include <QObject>
#include <QVector3D>

#include<QSpotLight>
#include <QQuickItem>


class OkeyController : public QObject
{
    Q_OBJECT


    //cells
    Q_PROPERTY(QQmlListProperty<QObject> player1Cells READ getPlayer1Cells NOTIFY player1CellsChanged)
    Q_PROPERTY(QQmlListProperty<QObject> player2Cells READ getPlayer2Cells NOTIFY player2CellsChanged)
    Q_PROPERTY(QQmlListProperty<QObject> player3Cells READ getPlayer3Cells NOTIFY player3CellsChanged)
    Q_PROPERTY(QQmlListProperty<QObject> player4Cells READ getPlayer4Cells NOTIFY player4CellsChanged)



    //tiles
    Q_PROPERTY(QQmlListProperty<QObject> redTiles READ getRedTiles NOTIFY redTilesChanged)
    Q_PROPERTY(QQmlListProperty<QObject> blueTiles READ getBlueTiles NOTIFY blueTilesChanged)
    Q_PROPERTY(QQmlListProperty<QObject> yellowTiles READ getYellowTiles NOTIFY yellowTilesChanged)
    Q_PROPERTY(QQmlListProperty<QObject> blackTiles READ getBlackTiles NOTIFY blackTilesChanged)
    Q_PROPERTY(QQmlListProperty<QObject> fakeTiles READ getFakeTiles NOTIFY fakeTilesChanged)


    //throwns
    Q_PROPERTY(QQmlListProperty<QObject> throwns READ getThrowns NOTIFY thrownsChanged)

    //joker tile
    Q_PROPERTY(QObject* jokerTile READ getJokerTile WRITE setJokerTile NOTIFY jokerTileChanged)

    //base tile
    Q_PROPERTY(QObject* baseTile READ getBaseTile WRITE setBaseTile NOTIFY baseTileChanged)

    //spotlight
    Q_PROPERTY(QQmlListProperty<QObject> spotLights READ getspotLights NOTIFY spotLightsChanged)


    //texts
    Q_PROPERTY(QString player1Text READ getPlayer1Text WRITE setPlayer1Text NOTIFY player1TextChanged)
    Q_PROPERTY(QString player2Text READ getPlayer2Text WRITE setPlayer2Text NOTIFY player2TextChanged)
    Q_PROPERTY(QString player3Text READ getPlayer3Text WRITE setPlayer3Text NOTIFY player3TextChanged)
    Q_PROPERTY(QString player4Text READ getPlayer4Text WRITE setPlayer4Text NOTIFY player4TextChanged)
    //notifications
    Q_PROPERTY(QStringList notifications READ getNotifications NOTIFY notificationsChanged)

    //progress bars
    Q_PROPERTY(QList<double> progressBar READ getProgressBar NOTIFY progressBarChanged)

public:
    explicit OkeyController(QObject *parent = nullptr);

    //cells
    QQmlListProperty<QObject> getPlayer1Cells();
    QQmlListProperty<QObject> getPlayer2Cells();
    QQmlListProperty<QObject> getPlayer3Cells();
    QQmlListProperty<QObject> getPlayer4Cells();


    QList<QObject*> player1Cells;
    QList<QObject*> player2Cells;
    QList<QObject*> player3Cells;
    QList<QObject*> player4Cells;


    //tiles
    QQmlListProperty<QObject> getRedTiles();
    QQmlListProperty<QObject> getBlueTiles();
    QQmlListProperty<QObject> getYellowTiles();
    QQmlListProperty<QObject> getBlackTiles();
    QQmlListProperty<QObject> getFakeTiles();



    QList<QObject*> redTiles;
    QList<QObject*> blueTiles;
    QList<QObject*> yellowTiles;
    QList<QObject*> blackTiles;
    QList<QObject*> fakeTiles;


    //throwns
    QQmlListProperty<QObject> getThrowns();
    QList<QObject*> throwns;

    //joker Tile
    QObject *getJokerTile();
    void setJokerTile(QObject *object);
    QObject* jokerTile;


    //base tile
    QObject *getBaseTile();
    void setBaseTile(QObject *object);
    QObject* baseTile;

    //spotlights
    QQmlListProperty<QObject> getspotLights();
    QList<QObject*> spotLights;


    //texts
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

    //notifications
    QStringList notifications;
    QStringList getNotifications();

    //progress bars
    QList<double> progressBar;
    QList<double> getProgressBar() const;
public slots:


private:



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


    void thrownsChanged();      //dummy
    void jokerTileChanged();    // dummy
    void baseTileChanged();
    void spotLightsChanged();

    void player1TextChanged();
    void player2TextChanged();
    void player3TextChanged();
    void player4TextChanged();

    void notificationsChanged();

    void progressBarChanged();
    void popupOpen(QString status, QString player);

};

#endif // OKEYCONTROLLER_H

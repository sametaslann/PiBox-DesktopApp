#ifndef SOCKET_H
#define SOCKET_H

#include "ludocontroller.h"
#include "ludoworker.h"
#include "okeycontroller.h"
#include "okeyworker.h"
#include <QObject>
#include <QTcpSocket>
#include <QThread>
#include <QPropertyAnimation>
#include <QParallelAnimationGroup>
#include <QString>
#include <QMessageBox>

class Lobies{

public:
    QString loby_number;
    QString game_type;
    QString player1;
    QString player2;
    QString player3;
    QString player4;

    Lobies(QString loby_number, QString game_type, QString player1, QString player2, QString player3, QString player4);
    Lobies();

};


class Socket : public QObject
{
    Q_OBJECT

public:

    explicit Socket(LudoController &controller,OkeyController &okeyController, QObject* parent = nullptr);
    QList<Lobies> loby;

    Q_INVOKABLE void startOkey();
    Q_INVOKABLE void stopOkey();
    Q_INVOKABLE void startLudo();
    Q_INVOKABLE void stopLudo();

    QByteArray read_from_server();
    void write_to_server(const char * request);

    void CreateLobby(QString game_type, QString &password);
    QString token;

    void newDataReceived(QString &player1, QString &player2, QString &player3, QString &player4);


public slots:
    bool login_request(const QString &username, const QString &password);
    void handleAnimateTiles(QObject *sourceTile, QObject *destinationTile);
    void handleAnimatePawns(QObject *sourcePawn, QObject *destPlate);

private:
    QTcpSocket* socket;
    LudoController &ludoController;
    OkeyController &okeyController;

    bool isConnectedSuccesfully;
    void connect_to_server();
    std::vector<char *> split(char *str, const char *delimiter);

    OkeyWorker *okeyWorker;
    LudoWorker *ludoWorker;



};


#endif // SOCKET_H

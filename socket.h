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
    Q_PROPERTY(QStringList comboModelOkey READ comboModelOkey WRITE setComboModelOkey NOTIFY comboModelOkeyChanged)
    Q_PROPERTY(QStringList comboModelLudo READ comboModelLudo WRITE setComboModelLudo NOTIFY comboModelLudoChanged)

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


    QStringList comboModelOkey() const;
    void setComboModelOkey(const QStringList &model);
    QStringList m_comboModelOkey;

    QStringList comboModelLudo() const;
    void setComboModelLudo(const QStringList &model);
    QStringList m_comboModelLudo;

public slots:

    void getLobbies();
    bool login_request(const QString &username, const QString &password);
    void handleAnimateTiles(QObject *sourceTile, QObject *destinationTile);
    void handleAnimatePawns(QObject *sourcePawn, QObject *destPlate);
    void handleAnimateDice(int diceResult, int nextPlayer);
private:
    QTcpSocket* socket;
    LudoController &ludoController;
    OkeyController &okeyController;

    bool isConnectedSuccesfully;
    void connect_to_server();
    std::vector<char *> split(char *str, const char *delimiter);

    OkeyWorker *okeyWorker;
    LudoWorker *ludoWorker;

    int lastPlayer;
    int lastDice;
    int activatedLobbyOkey;
    int activatedLobbyLudo;

signals:
    void comboModelOkeyChanged();
    void comboModelLudoChanged();
};


#endif // SOCKET_H

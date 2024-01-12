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

class Socket : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QStringList comboModelOkey READ comboModelOkey WRITE setComboModelOkey NOTIFY comboModelOkeyChanged)
    Q_PROPERTY(QStringList comboModelLudo READ comboModelLudo WRITE setComboModelLudo NOTIFY comboModelLudoChanged)
    Q_PROPERTY(QStringList leaderBoard READ getLeaderBoard NOTIFY leaderBoardChanged)
    Q_PROPERTY(bool isConnectedSuccesfully READ getIsConnectedSuccesfully WRITE setIsConnectedSuccesfully NOTIFY isConnectedSuccesfullyChanged)

public:

    explicit Socket(LudoController &controller,OkeyController &okeyController, QObject* parent = nullptr);

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

    QStringList m_leaderBoard;
    QStringList getLeaderBoard();

    bool isConnectedSuccesfully;
    bool getIsConnectedSuccesfully();
    void setIsConnectedSuccesfully(bool isConnected);

    void setLeaderBoard(const QStringList &model);
public slots:

    void getLobbies();
    bool login_request(const QString &username, const QString &password);
    void handleAnimateTiles(QObject *sourceTile, QObject *destinationTile);
    void handleAnimatePawns(QObject *sourcePawn, QObject *destPlate);
    void handleAnimateDice(int diceResult, int nextPlayer);
    void getLeaders();
    void handleOkeyNotificiations(QString notificiation);
    void handleLudoNotificiations(QString notificiation);
private:
    QTcpSocket* socket;
    LudoController &ludoController;
    OkeyController &okeyController;


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
    void leaderBoardChanged();
    void isConnectedSuccesfullyChanged();
};


#endif // SOCKET_H

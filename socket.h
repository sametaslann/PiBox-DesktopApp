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
#include <QMessageBox>

class Socket : public QObject
{
    Q_OBJECT

public:

    explicit Socket(LudoController &controller,OkeyController &okeyController, QObject* parent = nullptr);


    Q_INVOKABLE void startOkey();
    Q_INVOKABLE void stopOkey();

    Q_INVOKABLE void startLudo();
    Q_INVOKABLE void stopLudo();



    QByteArray read_from_server();
    void write_to_server(const char * request);






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

signals:

};

#endif // SOCKET_H

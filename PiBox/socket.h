#ifndef SOCKET_H
#define SOCKET_H

#include "ludocontroller.h"
#include "okeycontroller.h"
#include "okeyworker.h"
#include <QObject>
#include <QTcpSocket>
#include <QThread>


class Socket : public QObject
{
    Q_OBJECT

public:

    explicit Socket(LudoController &controller,OkeyController &okeyController, QObject* parent = nullptr);


    Q_INVOKABLE void startOkey();
    Q_INVOKABLE void stopOkey();
    QByteArray read_from_server();
    void write_to_server(const char * request);

    bool isLudoActive() const;
    bool isOkeyActive() const;



public slots:
    bool login_request(const QString &username, const QString &password);


private:
    QTcpSocket* socket;
    LudoController &ludoController;
    OkeyController &okeyController;

    bool isConnectedSuccesfully;
    void connect_to_server();
    std::vector<char *> split(char *str, const char *delimiter);

    OkeyWorker *okeyWorker;

signals:

};

#endif // SOCKET_H

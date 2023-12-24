#ifndef SOCKET_H
#define SOCKET_H

#include "ludocontroller.h"
#include <QObject>
#include <QTcpSocket>
#include <QThread>


class Socket : public QThread
{
    Q_OBJECT
public:

    explicit Socket(LudoController &controller, QObject* parent = nullptr)
        : QThread(parent), ludoController(controller) {
        connect_to_server();
    }
    void run() override;
    QByteArray read_from_server();
    void write_to_server(const char * request);


public slots:

    bool login_request(const QString &username, const QString &password);
private:
    QTcpSocket* socket;
    LudoController &ludoController;
    bool isConnectedSuccesfully;

    void connect_to_server();
    std::vector<char *> split(char *str, const char *delimiter);

signals:

};

#endif // SOCKET_H

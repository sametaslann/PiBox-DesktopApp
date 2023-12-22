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
        : QThread(parent), ludoController(controller) {}

    void run() override;

    QByteArray read_from_server();
    void write_to_server(const std::string request);
private:
    QTcpSocket* socket;
    LudoController &ludoController;


signals:

};

#endif // SOCKET_H

#ifndef OKEYWORKER_H
#define OKEYWORKER_H

#include <QObject>
#include "okeycontroller.h"
#include <QTcpSocket>
#include <QThread>
#include <QTimer>
#include <string>
#include <QMessageBox>

class OkeyWorker : public QThread
{
    Q_OBJECT
public:

    explicit OkeyWorker(OkeyController &controller, QString token, int lobbyID , QObject *parent = nullptr);

public slots:
    void run() override;

private:
    OkeyController &okeyController;
    QTcpSocket *okeySocket;

    std::vector<char *> split(char *str, const char *delimiter);

    int charToInt(char c);
    bool updateBoard(std::vector<char *> playerString, QList<QObject *> playerBoard);

    QObject *findSourceTile(char *tileString);


    bool isFirst = true;
    QString token;
    int lobbyId;

signals:
    void animateTile(QObject *sourceTile, QObject *destinationTile);

};

#endif // OKEYWORKER_H

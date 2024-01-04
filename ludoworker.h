#ifndef LUDOWORKER_H
#define LUDOWORKER_H

#include <QObject>
#include "ludocontroller.h"
#include <QTcpSocket>
#include <QThread>
#include <QMessageBox>

class LudoWorker : public QThread
{
    Q_OBJECT
public:
    explicit LudoWorker(LudoController &controller, QString token, int lobbyID ,QObject *parent = nullptr);

public slots:
    void run() override;

private:
    LudoController &ludoController;
    QTcpSocket *ludoSocket;
    std::vector<char *> split(char *str, const char *delimiter);
    int charToInt(char c);
    QString token;
    int lobbyId;


signals:
    void animatePawn(QObject *sourcePawn, QObject *destPawn);
    void animateDice(int diceResult, int nextPlayer);
};

#endif // LUDOWORKER_H

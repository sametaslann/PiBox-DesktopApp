#ifndef LUDOWORKER_H
#define LUDOWORKER_H

#include <QObject>
#include "ludocontroller.h"
#include <QTcpSocket>
#include <QThread>

class LudoWorker : public QThread
{
    Q_OBJECT
public:
    explicit LudoWorker(LudoController &controller, QTcpSocket &socket,QObject *parent = nullptr);


public slots:
    void run() override;

private:
    LudoController &ludoController;
    QTcpSocket &socket;

    std::vector<char *> split(char *str, const char *delimiter);
    int charToInt(char c);


signals:
    void animatePawn(QObject *sourcePawn, QObject *destPawn);

};

#endif // LUDOWORKER_H

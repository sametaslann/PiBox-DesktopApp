#include "ludoworker.h"



LudoWorker::LudoWorker(LudoController &controller,QString token, int lobbyID ,QObject *parent): ludoController(controller), token(token), lobbyId(lobbyID) {}

void LudoWorker::run()
{

    ludoSocket = new QTcpSocket();
    ludoSocket->connectToHost("127.0.0.1", 8080);

    if(ludoSocket->waitForConnected())
        qDebug() << "Okey socket opened succesfully";
    else
        QMessageBox::critical(nullptr, "Connection Error", "Failed to connect to the server. Please check your connection.");

    QByteArray data;
    while(!isInterruptionRequested())
    {
        char request[256];
        std::sprintf(request, "GETLUDO|%s", token.toStdString().c_str());

        ludoSocket->write(request);
        ludoSocket->waitForBytesWritten();
        ludoSocket->waitForReadyRead();
        data = ludoSocket->readAll();

        qDebug() << data.size();

        if(data.size() <1){
            QThread::msleep(1000);
            continue;
        }

        //QByteArray datax = "OK/52|53|54|55|56|57|58|59|80|85|5|6|64|65|66|67/5|huseyin|empty";

        std::vector<char*> lines = split(data.data(), "/");

        if(strcmp(lines.at(0),"OK") ==0)
        {

            std::vector<char*> dice = split(lines.at(2), "|");
            emit animateDice(std::stoi(dice.at(0)), std::stoi(dice.at(1)));

            std::vector<char*> pawns = split(lines.at(1), "|");
            int i=0;
            foreach (auto *pawn, pawns) {
                int pawnPosition = std::stoi(pawn);

                emit animatePawn(ludoController.pawns.at(i), ludoController.plates.at(pawnPosition));
                i++;
            }

        }

        QThread::sleep(1);
    }
}




std::vector<char*> LudoWorker::split(char *str, const char *delimiter)
{

    std::vector<char*> tokens;

    char *ptr = std::strtok(str,delimiter);

    while(ptr!=nullptr){
        tokens.push_back(ptr);
        ptr = std::strtok(nullptr, delimiter);
    }

    return tokens;


}

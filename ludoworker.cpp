#include "ludoworker.h"



LudoWorker::LudoWorker(LudoController &controller, QTcpSocket &socket, QObject *parent): ludoController(controller), socket(socket) {}

void LudoWorker::run()
{
    QByteArray data;
    while(!isInterruptionRequested())
    {
        /*socket.write("GETOKEYBOARD|");
        socket.waitForBytesWritten();

        socket.waitForReadyRead();
        data = socket.readAll();

        qDebug() << "Received from server: " << data;
        std::vector<char*> params = split(data.data(), "/");

        foreach (char* a, params) {
            qDebug() << a;
        }*/
        qDebug() << "Itarated";

        QByteArray datax = "OK/52|53|54|55|56|57|58|59|80|85|5|6|64|65|66|67/5|huseyin|empty";

        std::vector<char*> lines = split(datax.data(), "/");

        if(strcmp(lines.at(0),"OK") ==0)
        {
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

#include "okeyworker.h"


OkeyWorker::OkeyWorker(OkeyController &controller, QTcpSocket &socket, QObject *parent): okeyController(controller), socket(socket) {}

void OkeyWorker::run()
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
        qDebug() << "here";

        QByteArray datax = "OK/R9_1|R10_1|R11_1|R12_1|E|Y10_1|Y11_2/E|E|E|E|E|B2_1|B3_1|E|E|E|E|E/R9_2|R10|R11|R12|E|Y10|Y11/R9|R10|R11|R12|E|Y10|Y11/R1|K1|Y1|B1/K12|B11";

        qDebug() << datax.data();
        std::vector<char*> lines = split(datax.data(), "/");

        if(strcmp(lines.at(0),"OK") ==0)
        {
            std::vector<char*> player1String = split(lines.at(1), "|");
            updateBoard(player1String, okeyController.player1Cells);

            std::vector<char*> player2String = split(lines.at(2), "|");
            updateBoard(player2String, okeyController.player2Cells);

            std::vector<char*> player3String = split(lines.at(3), "|");
            updateBoard(player3String, okeyController.player3Cells);

            std::vector<char*> player4String = split(lines.at(4), "|");
            updateBoard(player4String, okeyController.player4Cells);

        }



        QThread::sleep(1);
     }
}

bool OkeyWorker::updateBoard(std::vector<char*> playerString, QList<QObject*> playerBoard)
{
     int counter=0;
     char color = '\0';
     int number=0;
     int order=0;

     try {
         foreach(char*a , playerString)
         {
            color = a[0];

            if(color == 'E' || strlen(a) < 4){
                counter++;
                continue;
            }

            if(strlen(a) == 5)
                number = (charToInt(a[1]) * 10 + charToInt(a[2])) - 1;

            else
                number = charToInt(a[1]) - 1;

            order = charToInt(a[strlen(a) - 1]);

            if(order == 2)
                number += 13;

            qDebug() << "color: "<< color;
            qDebug() << "number: "<< number;
            //qDebug() << "counter: "<< counter;
            QObject *sourceTile;
            if(color == 'R')
                sourceTile = okeyController.redTiles.at(number);
            else if(color == 'B')
                sourceTile = okeyController.blueTiles.at(number);
            else if(color == 'Y')
                sourceTile = okeyController.yellowTiles.at(number);

            else if(color == 'K')
                sourceTile = okeyController.blackTiles.at(number);
            else if(color == 'F')
                sourceTile = okeyController.fakeTiles.at(number);

            QObject *destinationTile = playerBoard.at(counter);

            qDebug() << destinationTile->property("x");
            qDebug() << sourceTile->property("x");

            sourceTile->setProperty("x", destinationTile->property("x"));
            sourceTile->setProperty("y", destinationTile->property("y"));
            sourceTile->setProperty("z", destinationTile->property("z"));
            sourceTile->setProperty("rotation", destinationTile->property("rotation"));

            counter++;
         }


     } catch (...) {
         qDebug()<< "Error";
        return false;
     }
     return true;
}



int OkeyWorker::charToInt(char c){
    return (int)c - '0';
}


std::vector<char*> OkeyWorker::split(char *str, const char *delimiter)
{

     std::vector<char*> tokens;
     qDebug() << delimiter;
     char *ptr = std::strtok(str,delimiter);

     while(ptr!=nullptr){
        tokens.push_back(ptr);
        ptr = std::strtok(nullptr, delimiter);
     }

     return tokens;

}

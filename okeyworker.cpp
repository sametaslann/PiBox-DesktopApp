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
        qDebug() << "Itarated";

        QByteArray datax = "OK/B4_1|Y10_2|B13_1|K5_2|R4_1|R10_1|K11_2|B6_2|Y5_2|K9_2|K6_2|Y13_1|B12_1|B1_2|E|E|E|E|E|E|E|E|E|E|E|E|E|E|E|E/K2_1|B6_1|R8_2|B13_2|Y6_2|K1_1|K4_2|Y11_1|K2_2|Y3_1|K4_1|B3_2|Y10_1|R13_2|E|E|E|E|E|E|E|E|E|E|E|E|E|E|E|E/B2_1|R8_1|B1_1|Y7_2|Y2_1|B3_1|R7_1|R12_1|R5_1|Y2_2|B4_2|R5_2|Y7_1|K5_1|E|E|E|E|E|E|E|E|E|E|E|E|E|E|E|E/B11_1|Y9_2|B7_1|R3_2|Y1_2|K3_2|B10_1|B8_1|R6_1|Y1_1|B8_2|R9_2|R2_1|B2_2|E|E|E|E|E|E|E|E|E|E|E|E|E|E|E|E/R1_1|R2_1|R3_1|R4_1/Y8_1|B7_2/huseyin";

        //qDebug() << datax.data();
        std::vector<char*> lines = split(datax.data(), "/");

        if(strcmp(lines.at(0),"OK") ==0)
        {

            std::vector<char*> playerTexts = split(lines.at(7), "|");
            okeyController.setPlayer3Text(playerTexts[0]);

            std::vector<char*> player1String = split(lines.at(1), "|");
            updateBoard(player1String, okeyController.player1Cells);

            std::vector<char*> player2String = split(lines.at(2), "|");
            updateBoard(player2String, okeyController.player2Cells);

            std::vector<char*> player3String = split(lines.at(3), "|");
            updateBoard(player3String, okeyController.player3Cells);

            std::vector<char*> player4String = split(lines.at(4), "|");
            updateBoard(player4String, okeyController.player4Cells);

            std::vector<char*> thrownsString = split(lines.at(5), "|");
            updateBoard(thrownsString, okeyController.throwns);

            std::vector<char*> jokerTileString = split(lines.at(6), "|");

            QObject* givenJokerTile = findSourceTile(jokerTileString.at(1));
            givenJokerTile->setProperty("x", okeyController.jokerTile->property("x"));
            givenJokerTile->setProperty("y", okeyController.jokerTile->property("y"));
            givenJokerTile->setProperty("z", okeyController.jokerTile->property("z"));
            givenJokerTile->setProperty("rotation", okeyController.jokerTile->property("rotation"));
            okeyController.spotLights.at(0)->setProperty("visible", true);

        }

        QThread::sleep(1);
        isFirst = false;
     }
    qDebug()<< "finished";
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

            if(a[0] == 'E' || strlen(a) < 4){
                counter++;
                continue;
            }



            QObject *sourceTile = findSourceTile(a);
            QObject *destinationTile = playerBoard.at(counter);
            sourceTile->setProperty("rotation", destinationTile->property("rotation"));

            if(isFirst)
            {
                sourceTile->setProperty("x", destinationTile->property("x"));
                sourceTile->setProperty("y", destinationTile->property("y"));
                sourceTile->setProperty("z", destinationTile->property("z"));
            }
            else{
                emit animateTile(sourceTile, destinationTile);
                QThread::msleep(300);
            }
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

QObject* OkeyWorker::findSourceTile(char* tileString){

    char color = '\0';
    int number=0;
    int order=0;

    if(strlen(tileString) == 5)
        number = (charToInt(tileString[1]) * 10 + charToInt(tileString[2])) - 1;

    else
        number = charToInt(tileString[1]) - 1;

    order = charToInt(tileString[strlen(tileString) - 1]);
    color = tileString[0];
    if(order == 2)
        number += 13;

    //qDebug() << "color: "<< color;
    //qDebug() << "number: "<< number;
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

    return sourceTile;
}



std::vector<char*> OkeyWorker::split(char *str, const char *delimiter)
{

     std::vector<char*> tokens;

     char *ptr = std::strtok(str,delimiter);

     while(ptr!=nullptr){
        tokens.push_back(ptr);
        ptr = std::strtok(nullptr, delimiter);
     }

     return tokens;

}

#include "okeyworker.h"


OkeyWorker::OkeyWorker(OkeyController &controller, QString token, QObject *parent): okeyController(controller), token(token) {

}

void OkeyWorker::run()
{

    okeySocket = new QTcpSocket();
    okeySocket->connectToHost("127.0.0.1", 8080);

    if(okeySocket->waitForConnected())
        qDebug() << "Okey socket opened succesfully";
    else
        QMessageBox::critical(nullptr, "Connection Error", "Failed to connect to the server. Please check your connection.");


    QByteArray data;
    while(!isInterruptionRequested())
    {

        char request[256];
        std::sprintf(request, "GETGAMEBOARD|%s", token.toStdString().c_str());

        okeySocket->write(request);
        okeySocket->waitForBytesWritten();
        okeySocket->waitForReadyRead();
        data = okeySocket->readAll();

        qDebug() << data.size();
        //QByteArray datax = "OK/B4_1|Y10_2|B13_1|K5_2|R4_1|R10_1|K11_2|K9_2|K6_2|B6_2|Y5_2|Y13_1|B12_1|B1_2|K2_1|E|E|E|E|E|E|E|E|E|E|E|E|E|E|E/R8_2|E|E|E|K1_1|K4_2|E|K2_2|E|K4_1|E|E|E|R13_2|B13_2|Y6_2|B6_1|E|E|E|Y3_1|E|E|Y11_1|B2_1|B3_2|E|E|Y10_1|E/Y2_1|Y2_2|Y7_1|Y7_2|R7_1|R8_1|R12_1|E|R5_2|K5_1|E|E|E|E|E|E|E|B1_1|E|B3_1|B4_2|B11_1|E|R5_1|E|E|E|E|E|E/E|B7_1|R3_2|Y1_2|K3_2|B10_1|B8_1|R6_1|Y1_1|B8_2|R9_2|R2_1|B2_2|Y8_1|E|E|E|Y9_2|E|E|E|E|E|E|E|E|E|E|E|E/E|E|E|E/R1_1|B7_2/huseyin";

        if(data.size() <1){
            QThread::msleep(1000);
            continue;
        }
        std::vector<char*> lines = split(data.data(), "/");


        if(lines.size() == 9  && strcmp(lines.at(0),"OK") == 0)
        {

            std::vector<char*> playerTexts = split(lines.at(8), "|");
            okeyController.setPlayer1Text(playerTexts[0]);
            okeyController.setPlayer2Text(playerTexts[1]);
            okeyController.setPlayer3Text(playerTexts[2]);
            okeyController.setPlayer4Text(playerTexts[3]);

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

            QObject* givenJokerTile = findSourceTile(jokerTileString.at(0));
            givenJokerTile->setProperty("x", okeyController.jokerTile->property("x"));
            givenJokerTile->setProperty("y", okeyController.jokerTile->property("y"));
            givenJokerTile->setProperty("z", okeyController.jokerTile->property("z"));
            givenJokerTile->setProperty("rotation", okeyController.jokerTile->property("rotation"));


            int nextPlayer = std::stoi(lines.at(7));
            if(nextPlayer >-1 && nextPlayer < 4)
                okeyController.spotLights.at(0)->setProperty("visible", true);

        }

        QThread::msleep(250);
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
                //QThread::msleep(300);
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

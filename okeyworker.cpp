#include "okeyworker.h"


OkeyWorker::OkeyWorker(OkeyController &controller, QString token, int lobbyID, QObject *parent): okeyController(controller), token(token), lobbyId(lobbyID) {

}

void OkeyWorker::run()
{

    okeySocket = new QTcpSocket();
    okeySocket->connectToHost("10.42.0.1", 8080);
    //okeySocket->connectToHost("127.0.0.1", 8080);
    if(okeySocket->waitForConnected())
        qDebug() << "Okey socket opened succesfully";
    else
        QMessageBox::critical(nullptr, "Connection Error", "Failed to connect to the server. Please check your connection.");


    QByteArray data;
    std::vector<std::string> savedThrowns = {"E", "E", "E", "E"};

    QVariant mainX = okeyController.redTiles[0]->property("x");
    QVariant mainY = okeyController.redTiles[0]->property("y");
    QVariant mainZ = okeyController.redTiles[0]->property("z");
    QVariant mainRotation = okeyController.redTiles[0]->property("rotation");

    bool isGameReseted = false;
    QString notificiation;
    bool winnerExist = false;

    while(!isInterruptionRequested())
    {
        char request[256];
        std::sprintf(request, "GETGAMEBOARD|%s", token.toStdString().c_str());

        okeySocket->write(request);
        okeySocket->waitForBytesWritten();
        okeySocket->waitForReadyRead();
        data = okeySocket->readAll();

        if(data.size() <1){
            QThread::msleep(1000);
            continue;
        }


        qDebug() << data.data();
        std::vector<char*> lines = split(data.data(), "/");

        if(lines.size() == 12  && strcmp(lines.at(0),"OK") == 0)
        {

            char *winner = lines.at(10);
            if(strcmp(winner, "empty") != 0 && !winnerExist){
                notificiation = QString::fromUtf8(winner) + " is the winner. Game Over";
                emit notify(notificiation);
                winnerExist = true;
            }

            if(strcmp(winner, "empty") == 0)
                winnerExist = false;

            std::vector<char*> playerTexts = split(lines.at(8), "|");
            if(playerTexts.size() == 4)
            {      
                if(playerTexts[0] != okeyController.player1Text)
                {
                    qDebug() << playerTexts[0] << "---" << okeyController.player1Text;

                    if(okeyController.player1Text != "empty")
                        notificiation = okeyController.player1Text + " disconnected";

                    else
                        notificiation = QString::fromUtf8(playerTexts[0]) + " connected";

                    emit notify(notificiation);
                    okeyController.setPlayer1Text(playerTexts[0]);

                }
                if(playerTexts[1] != okeyController.player2Text)
                {
                    QString notificiation;
                    if(okeyController.player2Text != "empty")
                        notificiation = okeyController.player2Text + " disconnected";

                    else
                        notificiation = QString::fromUtf8(playerTexts[1]) + " connected";

                    emit notify(notificiation);
                    okeyController.setPlayer2Text(playerTexts[1]);

                }
                if(playerTexts[2] != okeyController.player3Text)
                {
                    QString notificiation;
                    if(okeyController.player3Text != "empty")
                        notificiation = okeyController.player3Text + " disconnected";

                    else
                        notificiation = QString::fromUtf8(playerTexts[2]) + " connected";

                    emit notify(notificiation);
                    okeyController.setPlayer3Text(playerTexts[2]);

                }
                if(playerTexts[3] != okeyController.player4Text)
                {
                    QString notificiation;
                    if(okeyController.player4Text != "empty")
                        notificiation = okeyController.player4Text + " disconnected";

                    else
                        notificiation = QString::fromUtf8(playerTexts[3]) + " connected";

                    emit notify(notificiation);
                    okeyController.setPlayer4Text(playerTexts[3]);
                }
            }
            else{
                qDebug("Error in player names");
            }

            //quit control



            if(okeyController.player1Text == "empty" || okeyController.player2Text == "empty" || okeyController.player3Text == "empty" || okeyController.player4Text == "empty" )
            {
                if(isGameReseted)
                    QThread::msleep(500);
                else
                {
                    char *quitHappened = lines.at(11);
                    if(strcmp(quitHappened, "empty") != 0)
                    {
                        notificiation = QString::fromUtf8(quitHappened) + " left the game. Game Over";
                        emit notify(notificiation);
                    }


                    notificiation = "Game will be started again... Waiting players to join";
                    emit notify(notificiation);
                    reset_okey_game(mainX, mainY, mainZ, mainRotation);
                    isGameReseted = true;
                }
                continue;
            }
            else{
                isGameReseted = false;
           }

            //okeyController.notifications.append("notificiation");
            //progress bars
            std::vector<char*> finishRates = split(lines.at(9), "|");
            int finishRate0 = QString::fromUtf8(finishRates[0]).toInt();
            int finishRate1 = QString::fromUtf8(finishRates[1]).toInt();
            int finishRate2 = QString::fromUtf8(finishRates[2]).toInt();
            int finishRate3 = QString::fromUtf8(finishRates[3]).toInt();


            //qDebug() << (double)finishRate0/14 ;
            //qDebug() << (double)finishRate1/14 ;
            //qDebug() << (double)finishRate2/14 ;
            //qDebug() << (double)finishRate3/14 ;


            okeyController.progressBar[0] = (double)finishRate0/14  ;
            okeyController.progressBar[1] = (double)finishRate1/14  ;
            okeyController.progressBar[2] = (double)finishRate2/14  ;
            okeyController.progressBar[3] = (double)finishRate3/14  ;
            emit okeyController.progressBarChanged();

            qDebug() <<"after progress";


            //Istakalar
            std::vector<char*> player1String = split(lines.at(1), "|");
            updateBoard(player1String, okeyController.player1Cells);

            std::vector<char*> player2String = split(lines.at(2), "|");
            updateBoard(player2String, okeyController.player2Cells);

            std::vector<char*> player3String = split(lines.at(3), "|");
            updateBoard(player3String, okeyController.player3Cells);

            std::vector<char*> player4String = split(lines.at(4), "|");
            updateBoard(player4String, okeyController.player4Cells);

            //Throwns
            std::vector<char*> thrownsString = split(lines.at(5), "|");

            for (int i = 0; i < 4; ++i) {
                if(std::strcmp(thrownsString[i],"E")!=0 && std::strcmp(savedThrowns[i].c_str(), thrownsString[i]) != 0)
                {
                    QString tile = QString::fromUtf8(thrownsString[i]);
                    QString tileNumber;
                    QString tileName;
                    if(tile.size() == 4)
                        tileNumber = tile[1];
                    else
                        tileNumber = QString::fromUtf8("1") + tile[2];

                    if(tile[0] == 'R')
                        tileName= "Red " + tileNumber;
                    else if(tile[0] == 'Y')
                        tileName= "Yellow " + tileNumber;
                    else if(tile[0] == 'B')
                        tileName= "Blue " + tileNumber;
                    else if(tile[0] == 'K')
                        tileName= "Black " + tileNumber;

                    QString notificiation = QString::fromUtf8(playerTexts[i]) + " threw the "  + tileName;
                    emit notify(notificiation);
                    savedThrowns[i] = thrownsString[i];
                }
            }
            qDebug() <<"after throwns";

            updateBoard(thrownsString, okeyController.throwns);
            qDebug() <<"after throwns2  ";

            //Okey(Joker) Tile
            std::vector<char*> jokerTileString = split(lines.at(6), "|");


            if(strcmp(jokerTileString.at(1),"E") == 0)
            {
                QMessageBox::information(nullptr, "Game Over", "Tile is finished");
                break;
            }
            QObject* givenJokerTile = findSourceTile(jokerTileString.at(1));
            givenJokerTile->setProperty("x", okeyController.jokerTile->property("x"));
            givenJokerTile->setProperty("y", okeyController.jokerTile->property("y"));
            givenJokerTile->setProperty("z", okeyController.jokerTile->property("z"));
            givenJokerTile->setProperty("rotation", okeyController.jokerTile->property("rotation"));


            //Spotlight for next player
            int nextPlayer = std::stoi(lines.at(7));
            if(nextPlayer >-1 && nextPlayer < 4)
            {
                //qDebug() << nextPlayer;
                //qDebug() << (nextPlayer+3) % 4;
                okeyController.spotLights.at((nextPlayer+3) % 4)->setProperty("visible", false);
                okeyController.spotLights.at(nextPlayer)->setProperty("visible", true);
            }
        }

        QThread::msleep(500);
        isFirst = false;
     }
    qDebug()<< "finished";

}

void OkeyWorker::reset_okey_game(QVariant x, QVariant y, QVariant z, QVariant rotation){

    foreach (auto *tile, okeyController.redTiles) {
        //emit animateTile(tile, okeyController.baseTile);
        tile->setProperty("x", okeyController.baseTile->property("x"));
        tile->setProperty("y", okeyController.baseTile->property("y"));
        tile->setProperty("z", okeyController.baseTile->property("z"));
        tile->setProperty("rotation", okeyController.baseTile->property("rotation"));
    }
    QThread::msleep(200);
    foreach (auto *tile, okeyController.blueTiles) {
        tile->setProperty("x", okeyController.baseTile->property("x"));
        tile->setProperty("y", okeyController.baseTile->property("y"));
        tile->setProperty("z", okeyController.baseTile->property("z"));
        tile->setProperty("rotation", okeyController.baseTile->property("rotation"));
    }
    QThread::msleep(200);
    foreach (auto *tile, okeyController.yellowTiles) {
        tile->setProperty("x", okeyController.baseTile->property("x"));
        tile->setProperty("y", okeyController.baseTile->property("y"));
        tile->setProperty("z", okeyController.baseTile->property("z"));
        tile->setProperty("rotation", okeyController.baseTile->property("rotation"));
    }
    QThread::msleep(200);
    foreach (auto *tile, okeyController.blackTiles) {
        tile->setProperty("x", okeyController.baseTile->property("x"));
        tile->setProperty("y", okeyController.baseTile->property("y"));
        tile->setProperty("z", okeyController.baseTile->property("z"));
        tile->setProperty("rotation", okeyController.baseTile->property("rotation"));
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

            if(a[0] == 'E' || strlen(a) < 4){

                counter++;
                continue;
            }

            QObject *sourceTile = findSourceTile(a);
            QObject *destinationTile = playerBoard.at(counter);
            sourceTile->setProperty("rotation", destinationTile->property("rotation"));

            /*if(isFirst)
            {
                sourceTile->setProperty("x", destinationTile->property("x"));
                sourceTile->setProperty("y", destinationTile->property("y"));
                sourceTile->setProperty("z", destinationTile->property("z"));
            }*/

                emit animateTile(sourceTile, destinationTile);
                //QThread::msleep(300);


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
    else
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

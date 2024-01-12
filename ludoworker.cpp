#include "ludoworker.h"



LudoWorker::LudoWorker(LudoController &controller,QString token, int lobbyID ,QObject *parent): ludoController(controller), token(token), lobbyId(lobbyID) {}

void LudoWorker::run()
{

    ludoSocket = new QTcpSocket();

    ludoSocket->connectToHost("10.42.0.1", 8080);
    //ludoSocket->connectToHost("127.0.0.1", 8080);
    if(ludoSocket->waitForConnected())
        qDebug() << "LUDO socket opened succesfully";
    else
        QMessageBox::critical(nullptr, "Connection Error", "Failed to connect to the server. Please check your connection.");

    bool isGameReseted = false;
    std::vector<const char*> baselocations = {"52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67"};

    bool winnerExist = false;
    bool isQuitedSomeone = false;
    QString notification;
    QByteArray data;
    while(!isInterruptionRequested())
    {
        char request[256];
        std::sprintf(request, "GETLUDO|%s", token.toStdString().c_str());

        ludoSocket->write(request);
        ludoSocket->waitForBytesWritten();
        ludoSocket->waitForReadyRead();
        data = ludoSocket->readAll();

    
        if(data.size() <1){
            QThread::msleep(1000);
            continue;
        }

        //QByteArray datax = "OK/52|53|54|55|56|57|58|59|60|61|62|63|64|65|66|67/huseyin|doruk|samet|abdullah|0|0|0|0/6/0|empty|empty";

        qDebug() << data.data();
        std::vector<char*> lines = split(data.data(), "/");

        if(strcmp(lines.at(0),"OK") ==0)
        {

            std::vector<char*> otherInfos = split(lines.at(3), "|");

            char *winner = otherInfos.at(2);
            if(strcmp(winner, "empty") != 0 && !winnerExist){
                notification = QString::fromUtf8(winner) + " is the winner. Game Over";
                emit notify(notification);
                winnerExist = true;
            }

            if(strcmp(winner, "empty") == 0)
                winnerExist = false;


            std::vector<char*> playerTexts = split(lines.at(2), "|");
            if(playerTexts.size() >= 4)
            {      
                if(playerTexts[0] != ludoController.player1Text)
                {
                    qDebug() << playerTexts[0] << "---" << ludoController.player1Text;

                    if(ludoController.player1Text != "empty")
                        notification = ludoController.player1Text + " disconnected";

                    else
                        notification = QString::fromUtf8(playerTexts[0]) + " connected";

                    emit notify(notification);
                    ludoController.setPlayer1Text(playerTexts[0]);

                }
                if(playerTexts[1] != ludoController.player2Text)
                {

                    if(ludoController.player2Text != "empty")
                        notification = ludoController.player2Text + " disconnected";

                    else
                        notification = QString::fromUtf8(playerTexts[1]) + " connected";

                    emit notify(notification);
                    ludoController.setPlayer2Text(playerTexts[1]);

                }
                if(playerTexts[2] != ludoController.player3Text)
                {

                    if(ludoController.player3Text != "empty")
                        notification = ludoController.player3Text + " disconnected";

                    else
                        notification = QString::fromUtf8(playerTexts[2]) + " connected";

                    emit notify(notification);
                    ludoController.setPlayer3Text(playerTexts[2]);

                }
                if(playerTexts[3] != ludoController.player4Text)
                {

                    if(ludoController.player4Text != "empty")
                        notification = ludoController.player4Text + " disconnected";

                    else
                        notification = QString::fromUtf8(playerTexts[3]) + " connected";

                    emit notify(notification);
                    ludoController.setPlayer4Text(playerTexts[3]);
                }
            }
            else{
                qDebug("Error in player names");
            }


            char *quitHappened = otherInfos.at(3);
            if(strcmp(quitHappened, "empty") != 0 && !isQuitedSomeone)
            {
                notification = QString::fromUtf8(quitHappened) + " left the game. Game Over";
                emit notify(notification);
                notification = "Game will be started again... Waiting players to join";
                emit notify(notification);
                isQuitedSomeone = true;
            }
            else if(strcmp(quitHappened, "empty") == 0)
                isQuitedSomeone = false;


            if(ludoController.player1Text == "empty" || ludoController.player2Text == "empty" || ludoController.player3Text == "empty" || ludoController.player4Text == "empty" )
            {
                if(isGameReseted)
                    QThread::msleep(500);
                else
                {
                    int i=0;
                    foreach (auto *pawn, baselocations) {
                        int pawnPosition = std::stoi(pawn);
                        emit animatePawn(ludoController.pawns.at(i), ludoController.plates.at(pawnPosition));
                        i++;
                    }
                    isGameReseted = true;
                }
                continue;
            }
            else
               isGameReseted = false;


            //std::vector<char*> finishRates = split(lines.at(9), "|");
            int finishRate0 = QString::fromUtf8(playerTexts[4]).toInt();
            int finishRate1 = QString::fromUtf8(playerTexts[5]).toInt();
            int finishRate2 = QString::fromUtf8(playerTexts[6]).toInt();
            int finishRate3 = QString::fromUtf8(playerTexts[7]).toInt();



            ludoController.progressBar[0] = (double)finishRate0/242;
            ludoController.progressBar[1] = (double)finishRate1/242;
            ludoController.progressBar[2] = (double)finishRate2/242;
            ludoController.progressBar[3] = (double)finishRate3/242;
            emit ludoController.progressBarChanged();

            
            int playerId = std::stoi(otherInfos.at(1));
            int pawn_color_index = playerId*4; //pawnlar 4 4 gittiği için



            ludoController.pawns[(pawn_color_index +12) %16]->children()[0]->setProperty("visible", false);
            ludoController.pawns[(pawn_color_index +13) %16]->children()[0]->setProperty("visible", false);
            ludoController.pawns[(pawn_color_index +14) %16]->children()[0]->setProperty("visible", false);
            ludoController.pawns[(pawn_color_index +15) %16]->children()[0]->setProperty("visible", false);

            ludoController.pawns[pawn_color_index]->children()[0]->setProperty("visible", true);
            ludoController.pawns[pawn_color_index + 1]->children()[0]->setProperty("visible", true);
            ludoController.pawns[pawn_color_index + 2]->children()[0]->setProperty("visible", true);
            ludoController.pawns[pawn_color_index + 3]->children()[0]->setProperty("visible", true);


            emit animateDice(std::stoi(otherInfos.at(0)), playerId);

            std::vector<char*> pawns = split(lines.at(1), "|");
            int i=0;
            foreach (auto *pawn, pawns) {
                int pawnPosition = std::stoi(pawn);
                emit animatePawn(ludoController.pawns.at(i), ludoController.plates.at(pawnPosition));
                i++;
            }

        }

        QThread::msleep(250);
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

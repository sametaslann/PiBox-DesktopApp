#include "socket.h"

    
    Lobies::Lobies(QString loby_number, QString game_type, QString player1, QString player2, QString player3, QString player4){
        this->loby_number = loby_number;
        this->game_type = game_type;
        this->player1 = player1;
        this->player2 = player2;
        this->player3 = player3;
        this->player4 = player4;
    }
    Lobies::Lobies(){
        //this->loby_number = "Empty";
        //this->game_type = "Empty";
        //this->player1 = "Empty";
        //this->player2 = "Empty";
        //this->player3 = "Empty";
        //this->player4 = "Empty";
    }
    
    void Socket::connect_to_server()
    {
        socket = new QTcpSocket();
        socket->connectToHost("127.0.0.1", 8090);
    
        if(socket->waitForConnected())
             qDebug() << "Connection established to server";
        else
            qDebug() << "Couldn't connect to server";
    
        isConnectedSuccesfully = socket->waitForConnected();
    }
    
    void Socket::CreateLobby(QString game_type, QString &password){
        QByteArray d = "CREATELOBBY|" + token.toUtf8() + "|" + game_type.toUtf8() + "|" + password.toUtf8();
        write_to_server(d.constData());
    }
    

    void Socket::getLobbies(){
        QByteArray d = "GETLOBBIES|" + token.toUtf8();
        write_to_server(d.constData());

        QByteArray authResp = read_from_server();

        qDebug()<<authResp;
        QList<QByteArray> lobbies = authResp.split('/');
        QStringList new_model_okey;
        QStringList new_model_ludo;

        int countOkey = 0;
        int countLudo = 0;
        QString lobiName;
        for(int i=1; i<lobbies.size(); i++){
            QList<QByteArray> list = lobbies.at(i).split('|');
            QString lobi_number = QString(list.at(0));
            QString game_type = QString(list.at(1));



            if(game_type == "LUDO")
            {
                countLudo++;
                lobiName = "Lobby " + QString::number(countLudo);
                new_model_ludo.append(lobiName);
            }


            else if(game_type == "OKEY")
            {
                countOkey++;
                lobiName = "Lobby " + QString::number(countOkey);
                new_model_okey.append(lobiName);
            }

        }

        setComboModelOkey(new_model_okey);
        setComboModelLudo(new_model_ludo);
        //ok/#lobi|oyun türü|empty|empty|emtpy|empty/#lobi|oyun türü|empty|empty|emtpy|empty
        //create lobi, istek at, CREATELOBBY|Token|oyun türü

        if(lobbies.at(0) == "OK"){
            qDebug()<<"OK";
        }
        else{
            qDebug()<<"Error";
        }


    }
    
    bool Socket::login_request(const QString &username, const QString  &password){

        if(isConnectedSuccesfully)
        {

            qDebug() << "Username:" << username;
            qDebug() << "Password:" << password;

            QByteArray data = "LOGIN|" + username.toUtf8() + "|" + password.toUtf8();
            write_to_server(data.constData());
            //send to entered username adn password to socket

            QByteArray authResp = read_from_server();
            //QByteArray part1 = authResp.at(0);

            qDebug()<<authResp;

            QList<QByteArray> list = authResp.split('|');

            // Convert QByteArray to QString
            QString resultCode = QString(list.at(0));
            QString authToken = QString(list.at(1));
            token = authToken;

            if(resultCode == "OK"){
                qDebug()<<"Kod Ok";
                return 1;
            }
            else{
                return 0;
            }
        }

        else{
            QMessageBox::critical(nullptr, "Connection Error", "Failed to connect to the server. Please try again");
            connect_to_server();
            return 2;
        }

    }


Socket::Socket(LudoController &controller, OkeyController &okeyController, QObject *parent)
    :QObject{parent}, ludoController(controller), okeyController(okeyController) {
    connect_to_server();

}




void Socket::startLudo()
{
    ludoWorker = new LudoWorker(ludoController, token, activatedLobbyLudo);
    connect(ludoWorker, &LudoWorker::animatePawn, this, &Socket::handleAnimatePawns);
    connect(ludoWorker, &LudoWorker::animateDice, this, &Socket::handleAnimateDice);
    ludoWorker->start();
}
void Socket::stopLudo(){

    ludoWorker->requestInterruption();
    ludoWorker->quit();
    ludoWorker->wait();
}

void Socket::startOkey()
{
    okeyWorker = new OkeyWorker(okeyController, token, activatedLobbyOkey);
    connect(okeyWorker, &OkeyWorker::animateTile, this, &Socket::handleAnimateTiles);
    connect(okeyWorker, &OkeyWorker::notify, this, &Socket::handleNotificiations);
    okeyWorker->start();
}

void Socket::stopOkey(){
    okeyWorker->requestInterruption();
    okeyWorker->quit();
    okeyWorker->wait();
}

void Socket::handleAnimateTiles(QObject *sourceTile, QObject *destinationTile) {

    if(okeyWorker->isInterruptionRequested())
        return;

    QParallelAnimationGroup *parallelGroup = new QParallelAnimationGroup;

    QPropertyAnimation *animationX = new QPropertyAnimation(sourceTile, "x");
    animationX->setStartValue(sourceTile->property("x"));
    animationX->setEndValue(destinationTile->property("x"));
    animationX->setDuration(500); // 100 milliseconds

    QPropertyAnimation *animationY = new QPropertyAnimation(sourceTile, "y");
    animationY->setStartValue(sourceTile->property("y"));
    animationY->setEndValue(destinationTile->property("y"));
    animationY->setDuration(100); // 100 milliseconds

    QPropertyAnimation *animationZ = new QPropertyAnimation(sourceTile, "z");
    animationZ->setStartValue(sourceTile->property("z"));
    animationZ->setEndValue(destinationTile->property("z"));
    animationZ->setDuration(500); // 100 milliseconds

    QPropertyAnimation *animationRotation = new QPropertyAnimation(destinationTile, "rotation");
    animationRotation->setStartValue(sourceTile->property("rotation"));
    animationRotation->setEndValue(destinationTile->property("rotation"));
    animationRotation->setDuration(100); // 100 milliseconds

    // Add animations to the parallel group
    parallelGroup->addAnimation(animationX);
    parallelGroup->addAnimation(animationY);
    parallelGroup->addAnimation(animationZ);
    parallelGroup->addAnimation(animationRotation);

    // Start parallel animations
    parallelGroup->start();

}

void Socket::handleAnimatePawns(QObject *sourcePawn, QObject *destPlate) {

    QParallelAnimationGroup *parallelGroup = new QParallelAnimationGroup;

    QPropertyAnimation *animationX = new QPropertyAnimation(sourcePawn, "x");
    animationX->setStartValue(sourcePawn->property("x"));
    animationX->setEndValue(destPlate->property("x"));
    animationX->setDuration(500);


    QPropertyAnimation *animationZ = new QPropertyAnimation(sourcePawn, "z");
    animationZ->setStartValue(sourcePawn->property("z"));
    animationZ->setEndValue(destPlate->property("z"));
    animationZ->setDuration(500); // 500 milliseconds

    // Add animations to the parallel group
    parallelGroup->addAnimation(animationX);

    parallelGroup->addAnimation(animationZ);

    // Start parallel animations
    parallelGroup->start();

}

void Socket::handleAnimateDice(int diceResult, int nextPlayer)
{
    qDebug()<< "next: "<<nextPlayer;
    qDebug()<< "last: "<<lastPlayer;

    qDebug() << ludoController.dice->property("rotation");
    if(nextPlayer == lastPlayer && diceResult != 6)
    {
            QQuaternion  rotation;
        switch (diceResult) {
            case 1:
                rotation = QQuaternion::fromAxisAndAngle(QVector3D(0.0f, 0.0f, 1.0f), 90);
                break;

            case 2:
                rotation = QQuaternion::fromAxisAndAngle(QVector3D(1.0f, 0.0f, 0.0f), 90);
                break;

            case 3:
                rotation = QQuaternion::fromAxisAndAngle(QVector3D(1.0f, 0.0f, 0.0f), 180);
                break;

            case 4:
                 rotation = QQuaternion::fromAxisAndAngle(QVector3D(0.0f, 0.0f, 1.0f), -90);
                break;

            case 5:
                rotation = QQuaternion::fromAxisAndAngle(QVector3D(0.0f, 0.0f, 1.0f), 0);
                break;

            case 6:
                rotation = QQuaternion::fromAxisAndAngle(QVector3D(1.0f, 0.0f, 0.0f), -90);
                break;

            default:
                rotation = QQuaternion::fromAxisAndAngle(QVector3D(1.0f, 0.0f, 0.0f), -90);
                break;
        }

        QMetaObject::invokeMethod(ludoController.dice, "stopAnimations");
        ludoController.dice->setProperty("rotation", rotation);


    }
    else{
        QMetaObject::invokeMethod(ludoController.dice, "startAnimations");
        lastPlayer = nextPlayer;
    }
}

void Socket::handleNotificiations(QString notificiation){
    okeyController.notifications.append(notificiation);
    emit okeyController.notificationsChanged();
}

QByteArray Socket::read_from_server(){

    socket->waitForReadyRead();
    QByteArray data = socket->readAll();
    return data;
}

void Socket::write_to_server(const char *request){

    socket->write(request);
    socket->waitForBytesWritten();
}


std::vector<char*> Socket::split(char *str, const char *delimiter)
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


QStringList Socket::comboModelOkey() const
{
    return m_comboModelOkey;
}

void Socket::setComboModelOkey(const QStringList &model)
{
    if (m_comboModelOkey != model) {
        m_comboModelOkey = model;
        emit comboModelOkeyChanged();
    }
}


QStringList Socket::comboModelLudo() const
{
    return m_comboModelLudo;
}

void Socket::setComboModelLudo(const QStringList &model)
{
    if (m_comboModelLudo != model) {
        m_comboModelLudo = model;
        emit comboModelLudoChanged();
    }
}

QStringList Socket::getLeaderBoard()
{
    return m_leaderBoard;
}

void Socket::setLeaderBoard(const QStringList &model)
{
    if (m_leaderBoard != model) {
        m_leaderBoard = model;
        emit leaderBoardChanged();
    }
}


void Socket::getLeaders(){

    QByteArray d = "GETUSERSTATS|" + token.toUtf8();
    //OK/admin|0|0|0|0/huseyin|0|0|1|0/test1|0|0|0|0/doruk|0|0|0|1/abdullah|0|0|0|1/samet|0|0|0|1/baris|0|0|0|0/
    //1)ludo loss, 2)ludo win, 3)okey loss, 4)okey win

    write_to_server((d.constData()));

    QByteArray res = read_from_server();

    std::vector<char* > lines = split(res.data(), "/");


    QStringList leader_board;

    for (int i = 1; i < lines.size(); ++i) {


        std::vector<char*> params = split(lines.at(i), "|");


        qDebug() <<"here";
        leader_board.append(QString::fromUtf8(params.at(0)));

        int ludoScore = std::stoi(params.at(2)) - std::stoi(params.at(1));
        int okeyScore = std::stoi(params.at(4)) - std::stoi(params.at(3));

        leader_board.append(QString::number(ludoScore));
        leader_board.append(QString::number(okeyScore));
        leader_board.append(QString::number(okeyScore + ludoScore));
    }

    setLeaderBoard(leader_board);


}



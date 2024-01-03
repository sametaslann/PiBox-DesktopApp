
    #include "socket.h"
    //#include "src/mydata.h"
    
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
        socket->connectToHost("127.0.0.1", 8080);
    
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
    
    void Socket::newDataReceived(QString &player1, QString &player2, QString &player3, QString &player4){
        QByteArray d = "GETLOBBIES|" + token.toUtf8();
        write_to_server(d.constData());
    
        QByteArray authResp = read_from_server();
    
        qDebug()<<authResp;
        QList<QByteArray> lobbies = authResp.split('/');
    
        for(int i=1; i<lobbies.size()-1; i++){
            QList<QByteArray> list = lobbies.at(i).split('|');
            QString lobi_number = QString(list.at(0));
            QString game_type = QString(list.at(1));
            player1 = QString(list.at(2));
            player2 = QString(list.at(3));
            player3 = QString(list.at(4));
            player4 = QString(list.at(5));
    
            Lobies a(lobi_number, game_type, player1, player2, player3, player4);
            loby.append(a);
        }
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
    
  
    
  
    
   
    
    
    
    
   
    



Socket::Socket(LudoController &controller, OkeyController &okeyController, QObject *parent)
    :QObject{parent}, ludoController(controller), okeyController(okeyController) {
    connect_to_server();
}




void Socket::startLudo()
{
    if(!isConnectedSuccesfully){

        ludoWorker = new LudoWorker(ludoController, *socket);
        connect(ludoWorker, &LudoWorker::animatePawn, this, &Socket::handleAnimatePawns);
        ludoWorker->start();
    }
    else
    {
        QMessageBox::critical(nullptr, "Connection Error", "Failed to connect to the server. Please check your connection.");
    }

}
void Socket::stopLudo(){
    if(!isConnectedSuccesfully)
        ludoWorker->requestInterruption();
}

void Socket::startOkey()
{
    if(!isConnectedSuccesfully){
        okeyWorker = new OkeyWorker(okeyController, *socket);
        connect(okeyWorker, &OkeyWorker::animateTile, this, &Socket::handleAnimateTiles);
        okeyWorker->start();        
    }
    else
    {
         QMessageBox::critical(nullptr, "Connection Error", "Failed to connect to the server. Please check your connection.");
    }

}

void Socket::stopOkey(){
    if(!isConnectedSuccesfully)
    {
         okeyWorker->requestInterruption();
         okeyWorker->terminate();
    }

}

void Socket::handleAnimateTiles(QObject *sourceTile, QObject *destinationTile) {

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
    animationZ->setDuration(500); // 100 milliseconds

    // Add animations to the parallel group
    parallelGroup->addAnimation(animationX);

    parallelGroup->addAnimation(animationZ);

    // Start parallel animations
    parallelGroup->start();

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
    qDebug() << "Debug1";
    std::vector<char*> tokens;
    qDebug() << delimiter;
    char *ptr = std::strtok(str,delimiter);
    qDebug() << "Debug1.5";
    while(ptr!=nullptr){
        tokens.push_back(ptr);
        ptr = std::strtok(nullptr, delimiter);
    }
    qDebug() << "Debug2";
    return tokens;

}



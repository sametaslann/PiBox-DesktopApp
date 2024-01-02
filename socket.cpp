#include "socket.h"

Socket::Socket(LudoController &controller, OkeyController &okeyController, QObject *parent)
    :QObject{parent}, ludoController(controller), okeyController(okeyController) {
    connect_to_server();
}

void Socket::connect_to_server()
{
    socket = new QTcpSocket();
    socket->connectToHost("127.0.0.1", 8010);

    if(socket->waitForConnected())
         qDebug() << "Connection established to server";
    else
        qDebug() << "Couldn't connect to server";

    isConnectedSuccesfully = socket->waitForConnected();
}

bool Socket::login_request(const QString &username, const QString  &password){

    qDebug() << "Username:" << username;
    qDebug() << "Password:" << password;  
    return 1;
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


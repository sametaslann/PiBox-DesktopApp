#include "socket.h"
//#include "src/mydata.h"


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

void Socket::newDataReceived(QString &player1, QString &player2, QString &player3, QString &player4){
    QByteArray d = "GETLOBBIES|" + token.toUtf8();
    write_to_server(d.constData());

    QByteArray authResp = read_from_server();

    qDebug()<<authResp;

    QList<QByteArray> list = authResp.split('|');

    //ok/#lobi|oyun türü|empty|empty|emtpy|empty/#lobi|oyun türü|empty|empty|emtpy|empty

    //create lobi, istek at, CREATELOBBY|Token|oyun türü

    QString lobi_number = QString(list.at(1));
    QString game_type = QString(list.at(2));
    player1 = QString(list.at(3));
    player2 = QString(list.at(4));
    player3 = QString(list.at(5));
    player4 = QString(list.at(6));

    if(list.at(0) == "OK"){
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

    //okeyWorker.moveToThread(&thread1);
    //worker2.moveToThread(&thread2);



}

void Socket::stopOkey(){
    qDebug() << "stoppp";
    okeyWorker->requestInterruption();
}

void Socket::startOkey()
{
    if(!isConnectedSuccesfully){
        okeyWorker = new OkeyWorker(okeyController, *socket);
        okeyWorker->start();
    }
    else
    {
        //pop-up
    }


    if(isConnectedSuccesfully){

       /* if(1)
        {
            while(isLudoActive())
            {
                socket->write("GETLUDOBOARD|");
                socket->waitForBytesWritten();

                socket->waitForReadyRead();
                data = socket->readAll();

                qDebug() << "Received from server: " << data;
                std::vector<char*> params = split(data.data(), "|");

                if(std::strcmp(params[0], "MOVE") == 0){

                    if(ludoController.getPlaneCoordinatesSize()>0)
                        ludoController.movePawn(params[1], params[2]);
                }

                foreach (char* a, params) {
                    qDebug() << a;
                }

                QThread::sleep(1);
            }
        }

        else if(1)
        {
            while(isOkeyActive())
            {
                socket->write("GETOKEYBOARD|");
                socket->waitForBytesWritten();

                socket->waitForReadyRead();
                data = socket->readAll();

                qDebug() << "Received from server: " << data;
                std::vector<char*> params = split(data.data(), "/");

                if(std::strcmp(params[0], "MOVE") == 0){

                    if(ludoController.getPlaneCoordinatesSize()>0)
                        ludoController.movePawn(params[1], params[2]);
                }

                foreach (char* a, params) {
                    qDebug() << a;
                }

                QThread::sleep(1);
            }
        }
        else if(1)
        {

            while(isOkeyActive())
            {
                qDebug() << "Debug-1";
                QByteArray datax = "OK/R9|R10|R11|R12|E|Y10|Y11/E|E|E|E|E|B2|B3|E|E|E|E|E/R9|R10|R11|R12|E|Y10|Y11/R9|R10|R11|R12|E|Y10|Y11/R1|K1|Y1|B1/K12|B11";


                qDebug() << datax.data();
                std::vector<char*> params = split(datax.data(), "/");

                foreach (char* a, params) {
                    qDebug() << a;
                }

                QThread::sleep(1);
            }
        }*/
    }
    else
    {
        qDebug()<< "Pop-up will appear";
    }

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


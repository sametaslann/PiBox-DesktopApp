#include "socket.h"


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

void Socket::run()
{
    QByteArray data;

    if(isConnectedSuccesfully){

        // Example: Send and receive data in a loop
        while (true) {

            socket->write("GETBOARD|");
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

            sleep(1);
        }

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
    std::vector<char*> tokens;

    char *ptr = std::strtok(str,delimiter);

    while(ptr!=nullptr){
        tokens.push_back(ptr);
        ptr = std::strtok(nullptr, delimiter);
    }
    return tokens;

}


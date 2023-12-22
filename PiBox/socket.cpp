#include "socket.h"


void Socket::run()
{
    socket = new QTcpSocket();

    socket->connectToHost("127.0.0.1", 8099);

    if (socket->waitForConnected()) {
        qDebug() << "Connected to server";

        // Example: Send and receive data in a loop
        while (true) {
            socket->write("MOVE|");
            socket->waitForBytesWritten();

            if(ludoController.getPlaneCoordinatesSize()>0)
                ludoController.movePawn();


            // Sleep for a while (adjust as needed)
            sleep(1);
        }
    } else {
        qDebug() << "Failed to connect to server: " << socket->errorString();
    }

}

QByteArray Socket::read_from_server(){

    socket->waitForReadyRead();
    QByteArray data = socket->readAll();
    return data;
    qDebug() << "Received from server: " << data;
}

void Socket::write_to_server(const std::string request){

    socket->write("MOVE|");
    socket->waitForBytesWritten();
}



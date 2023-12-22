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

            socket->waitForReadyRead();
            QByteArray data = socket->readAll();
            qDebug() << "Received from server: " << data;

            if(ludoController.getPlaneCoordinatesSize()>0 && data == "MOVE")
                ludoController.movePawn();


            // Sleep for a while (adjust as needed)
            sleep(1);
        }
    } else {
        qDebug() << "Failed to connect to server: " << socket->errorString();
    }

}



// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

#include "main.h"

void onInterrupt(int signal)
{
    interrupted = 1;
}

void sendRegisterRequest(const int socket, const string &username, const string &email, const string &password)
{
    string request = "REGISTER|" + username + "|" + email + "|" + password;
    send(socket, request.c_str(), REQUEST_BUFFER_SIZE, 0);

    // Receive the response from the server
    char buffer[REQUEST_BUFFER_SIZE];
    int bytesRead = recv(socket, buffer, REQUEST_BUFFER_SIZE, 0);
    if (bytesRead > 0)
    {
        buffer[bytesRead] = '\0';
        std::cout << "Received message from server: " << buffer << std::endl;
    }
}

string sendLoginRequest(const int socket, const string &username, const string &password)
{
    string request = "LOGIN|" + username + "|" + password;
    send(socket, request.c_str(), REQUEST_BUFFER_SIZE, 0);

    // Receive the response from the server
    char buffer[REQUEST_BUFFER_SIZE];
    int bytesRead = recv(socket, buffer, REQUEST_BUFFER_SIZE, 0);
    if (bytesRead > 0)
    {
        buffer[bytesRead] = '\0';
        std::cout << "Received message from server: " << buffer << std::endl;
    }

    return string(buffer);
}

string sendGetLobbiesRequest(const int socket, const string &sessionToken)
{
    string request = "GETLOBBIES|" + sessionToken;
    send(socket, request.c_str(), REQUEST_BUFFER_SIZE, 0);

    // Receive the response from the server
    char buffer[REQUEST_BUFFER_SIZE];
    int bytesRead = recv(socket, buffer, REQUEST_BUFFER_SIZE, 0);
    if (bytesRead > 0)
    {
        buffer[bytesRead] = '\0';
        std::cout << "Received message from server: " << buffer << std::endl;
    }

    return string(buffer);
}

void sendQuitRequest(const int socket, const string &sessionToken)
{
    string request = "QUIT|" + sessionToken;
    send(socket, request.c_str(), REQUEST_BUFFER_SIZE, 0);

    // Receive the response from the server
    char buffer[REQUEST_BUFFER_SIZE];
    int bytesRead = recv(socket, buffer, REQUEST_BUFFER_SIZE, 0);
    if (bytesRead > 0)
    {
        buffer[bytesRead] = '\0';
        std::cout << "Received message from server: " << buffer << std::endl;
    }
}

int connectToServer()
{
    int clientSocket = socket(AF_INET, SOCK_STREAM, 0);
    if (clientSocket == -1)
    {
        std::cerr << "Error creating socket" << std::endl;
        return -1;
    }

    pair<string, string> config = readConfig();
    sockaddr_in serverAddress;
    string sessionToken;
    serverAddress.sin_family = AF_INET;
    serverAddress.sin_addr.s_addr = inet_addr(config.first.c_str());
    serverAddress.sin_port = htons(stoi(config.second));

    if (connect(clientSocket, (struct sockaddr *)&serverAddress, sizeof(serverAddress)) == -1)
    {
        std::cerr << "Error connecting to server" << std::endl;
        close(clientSocket);
        return -1;
    }

    return clientSocket;
}

void sendConnectRequest(const int socket, const string &sessionToken, int id, const string &password)
{
    string request = "CONNECT|" + sessionToken + "|" + to_string(id) + "|" + password;
    send(socket, request.c_str(), REQUEST_BUFFER_SIZE, 0);

    // Receive the response from the server
    char buffer[REQUEST_BUFFER_SIZE];
    int bytesRead = recv(socket, buffer, REQUEST_BUFFER_SIZE, 0);
    if (bytesRead > 0)
    {
        buffer[bytesRead] = '\0';
        std::cout << "Received message from server: " << buffer << std::endl;
    }
}

int main(int argc, char *argv[])
{
    set_qt_environment();

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    const QUrl url(u"qrc:Main/main.qml"_qs);
    const QUrl login_url(u"qrc:Main/content/Login_screen.qml"_qs);

    QObject::connect(
        &engine, &QQmlApplicationEngine::objectCreated, &app,
        [url, login_url](QObject *obj, const QUrl &objUrl) {
            if (!obj && (url == objUrl || login_url == objUrl))
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);

    engine.addImportPath(QCoreApplication::applicationDirPath() + "/qml");
    engine.addImportPath(":/");

    engine.load(url);
    engine.load(login_url);

    if (engine.rootObjects().isEmpty()) {
        return -1;
    }

    int clientSocket = connectToServer();
    vector<string> loginResponse = split(sendLoginRequest(clientSocket, "admin", "123456"), '|');
    string sessionToken = loginResponse[1];
    int myId = stoi(loginResponse[2]);
    cout << "My id: " << myId << endl;
    string lobbiesResponse = sendGetLobbiesRequest(clientSocket, sessionToken);
    vector<Lobby> lobbies;
    vector<string> lobbiesData = split(lobbiesResponse, '|');
    for (size_t i = 1; i < lobbiesData.size(); i += 6)
    {
        Lobby lobby;
        lobby.id = stoi(lobbiesData[i]);
        lobby.type = lobbiesData[i + 1];
        for (size_t j = i + 2; j < i + 6; j++)
        {
            lobby.players.push_back(lobbiesData[j]);
        }
        lobbies.push_back(lobby);
    }
    lobbies[0].print();
    sendConnectRequest(clientSocket, sessionToken, lobbies[0].id, "123456");
    sendQuitRequest(clientSocket, sessionToken);

    close(clientSocket);

    return app.exec();
}

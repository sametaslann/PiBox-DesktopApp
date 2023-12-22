
#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "app_environment.h"
#include "import_qml_components_plugins.h"
#include "import_qml_plugins.h"

#include "../lib/database.h"
#include "../lib/utils.h"
#include "../lib/lobby.h"


#define REQUEST_BUFFER_SIZE 1024

using namespace std;

int interrupted = 0;

void onInterrupt(int signal);
void sendRegisterRequest(const int socket, const string &username, const string &email, const string &password);
string sendLoginRequest(const int socket, const string &username, const string &password);
string sendGetLobbiesRequest(const int socket, const string &sessionToken);
void sendQuitRequest(const int socket, const string &sessionToken);
int connectToServer();
void sendConnectRequest(const int socket, const string &sessionToken, int id, const string &password);


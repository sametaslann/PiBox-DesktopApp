// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQuickItem>

#include "app_environment.h"
#include "ludocontroller.h"
#include "okeycontroller.h"
#include "import_qml_components_plugins.h"
#include "import_qml_plugins.h"
#include "socket.h"
#include <QQmlContext>



int main(int argc, char *argv[])
{
    set_qt_environment();

    QApplication app(argc, argv);

    QQmlApplicationEngine engine;

    LudoController ludoController; // Instantiate the custom C++ object
    engine.rootContext()->setContextProperty("ludoController", &ludoController);

    OkeyController okeyController; // Instantiate the custom C++ object
    engine.rootContext()->setContextProperty("okeyController", &okeyController);

    Socket socketThread(ludoController, okeyController);
    engine.rootContext()->setContextProperty("socket_comm", &socketThread);


    //socketThread.start();


    const QUrl url(u"qrc:/qt/qml/Main/main.qml"_qs);
    QObject::connect(
                &engine, &QQmlApplicationEngine::objectCreated, &app,
                [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    },
    Qt::QueuedConnection);

    engine.addImportPath(QCoreApplication::applicationDirPath() + "/qml");
    engine.addImportPath(":/");
    engine.load(url);

    if (engine.rootObjects().isEmpty()) {
        return -1;
    }



    return app.exec();
}

#ifndef LUDOCLASS_H
#define LUDOCLASS_H

#include <QObject>
#include <QQmlApplicationEngine>

class LudoClass : public QQuickItem
{
    Q_OBJECT
public:
    explicit LudoClass(QQmlApplicationEngine &engine);
    void init();

private:
    QQmlApplicationEngine &engine;

signals:

};

#endif // LUDOCLASS_H

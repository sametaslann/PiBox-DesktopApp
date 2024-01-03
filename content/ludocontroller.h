#ifndef LUDOCONTROLLER_H
#define LUDOCONTROLLER_H

#include <QObject>
#include <Qt3DQuick/Qt3DQuick>

class LudoController : public QObject
{
    Q_OBJECT
public:
    explicit LudoController(QObject *parent = nullptr);

signals:

};

#endif // LUDOCONTROLLER_H

#ifndef LUDOWORKER_H
#define LUDOWORKER_H

#include <QObject>

class LudoWorker : public QObject
{
    Q_OBJECT
public:
    explicit LudoWorker(QObject *parent = nullptr);

signals:

};

#endif // LUDOWORKER_H

#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>

class Backend : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString message READ getMessage WRITE setMessage NOTIFY messageChanged)

public:
    explicit Backend(QObject *parent = nullptr);

    QString getMessage() const;
    void setMessage(const QString &message);
    QString getButtonText(int pageNumber);

    void handleButtonClick(int pageNumber);

signals:
    void messageChanged();

private:
    QString m_message;
};

#endif // BACKEND_H
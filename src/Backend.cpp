#include "Backend.h"
#include <QDebug>

Backend::Backend(QObject *parent) : QObject(parent)
{
    m_message = "Hello from C++!";
}

QString Backend::getMessage() const
{
    return m_message;
}

void Backend::setMessage(const QString &message)
{
    if (m_message != message) {
        m_message = message;
        emit messageChanged();
    }
}

QString Backend::getButtonText(int pageNumber)
{
    if (pageNumber == 1) {
        return "Button on Page 1";
    } else if (pageNumber == 2) {
        return "Button on Page 2";
    } else {
        return "Default Button";
    }
}

void Backend::handleButtonClick(int pageNumber)
{
    if (pageNumber == 1) {
        qDebug() << "Button on Page 1 clicked!";
        // Perform specific logic for Page 1 button click
    } else if (pageNumber == 2) {
        qDebug() << "Button on Page 2 clicked!";
        // Perform specific logic for Page 2 button click
    } else {
        qDebug() << "Default button clicked!";
        // Perform default logic for button click
    }
}
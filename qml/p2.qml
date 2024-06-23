import QtQuick
import QtQuick.Controls

Item {
    Rectangle {
        anchors.fill: parent
        color: "lightgreen"
    }

    Button {
        text: Backend.getButtonText(2)
        anchors.centerIn: parent
        onClicked: Backend.handleButtonClick(2)
    }
}
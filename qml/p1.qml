import QtQuick
import QtQuick.Controls

Item {
    Rectangle {
        anchors.fill: parent
        color: "lightblue"
    }

    Button {
        text: Backend.getButtonText(1)
        anchors.centerIn: parent
        onClicked: Backend.handleButtonClick(1)
    }
}
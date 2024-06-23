import QtQuick
import QtQuick.Window
import QtQuick.Controls
import com.example 1.0

ApplicationWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Menu")

    Backend {
        id: backend
    }

    header: ToolBar {
        id: toolbar
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            text: "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (drawer.visible) {
                    drawer.close()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            text: stackView.currentItem ? stackView.currentItem.title : ""
            anchors.centerIn: parent
        }
    }

    Drawer {
        id: drawer
        width: window.width * 0.66
        height: window.height - toolbar.height
        edge: Qt.LeftEdge
        modal: false
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        y: toolbar.height

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("Home")
                width: parent.width
                onClicked: {
                    stackView.push("home.qml")
                    drawer.close()
                }
            }

            ItemDelegate {
                text: qsTr("Page 1")
                width: parent.width
                onClicked: {
                    stackView.push("p1.qml")
                    drawer.close()
                }
            }

            ItemDelegate {
                text: qsTr("Page 2")
                width: parent.width
                onClicked: {
                    stackView.push("p2.qml")
                    drawer.close()
                }
            }
        }
    }

    StackView {
        id: stackView
        initialItem: "home.qml"
        anchors.fill: parent
    }

    Text {
        text: Backend.message
        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
            margins: 20
        }
    }
}
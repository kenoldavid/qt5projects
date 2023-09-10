import QtQuick 2.12

Item {
    Rectangle {
        id: background
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#BCFF79" }
            GradientStop { position: 1.0; color: "#57AE00" }
        }

        Text {
            id: sizeOfWindow
            anchors.centerIn: parent
            text: qsTr("Width: " + parent.width +
                       "\nHeight: " + parent.height)
        }
    }
}

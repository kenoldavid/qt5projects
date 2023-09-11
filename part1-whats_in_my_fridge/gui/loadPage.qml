import QtQuick 2.15
import QtQml 2.15
import QtQuick.Controls 2.15

Item {
    id: splashPage

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
//            text: qsTr("Width: " + parent.width +
//                       "\nHeight: " + parent.height)
        }

        Image {
            source: "qrc:/img/logo.svg"
            width: splashPage.width
            height: splashPage.width
            anchors.centerIn: parent
            fillMode: Image.PreserveAspectFit
            clip: true
        }

        Timer {
            id: splashPageTimer
            interval: 2500
            running: true
            repeat: false
            onTriggered: {
                //console.log("Interval: " + interval)
                console.log("Running: " + running)
                //console.log("Repeat: " + repeat)
                contentFrame.replace("qrc:/nextPage.qml")
            }
        }
    }
}

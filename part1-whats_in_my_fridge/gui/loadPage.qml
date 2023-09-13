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
            visible: false
            anchors.centerIn: parent
            color: "steelblue"
            font.pixelSize: 18
            font.weight: Font.ExtraBold
            font.capitalization: Font.AllUppercase
            text: qsTr("what's in my fridge?")
        }

        Image {
            id: logoImage
            source: "qrc:/img/logo.svg"
            width: splashPage.width
            height: splashPage.width
            anchors.centerIn: parent
            fillMode: Image.PreserveAspectFit
            clip: true

            states: [
                State {
                    name: "loaded"
                    when: logoImage.status == Image.Ready
                },
                State {
                    name: "rotated"
                    PropertyChanges { target: logoImage; rotation: 180; }
                }
            ]

            transitions: [
                Transition {
                    RotationAnimation {
                        loops: Animation.Infinite
                        duration: 1000
                        direction: RotationAnimation.Clockwise
                        //from: 0
                        to: 180
                    }
                }
            ]

//            MouseArea {
//                anchors.fill: parent
//                onClicked: logoImage.state = "rotated"
//            }

            onStatusChanged: if(logoImage.status == Image.Ready)
                                 logoImage.state = "rotated"
        }

        ParallelAnimation {
            id: myAnimation
            running: true
            loops: 1

            NumberAnimation {
                target: logoImage
                property: "width"
                duration: 2000
                easing.type: Easing.InOutQuad
                from: logoImage.width * 0.6
                to: logoImage.implicitWidth
            }

            NumberAnimation {
                target: logoImage
                property: "width"
                duration: 2000
                easing.type: Easing.InOutQuad
                from: logoImage.implicitWidth
                to: logoImage.width * 0.6
            }

            onFinished: sizeOfWindow.visible = true
        }

        // Text { text: myAnimation.running ? "Animation is running" : "Animation is not running" }

        Timer {
            id: splashPageTimer
            interval: 2500
            running: true
            repeat: false
            onTriggered: {
                //console.log("Interval: " + interval)
                //console.log("Running: " + running)
                //console.log("Repeat: " + repeat)
                contentFrame.replace("qrc:/nextPage.qml")
            }
        }

    } // End Rectangle component
} // End Item element

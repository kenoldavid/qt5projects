import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ApplicationWindow {
    visible: true
    width: 360
    height: 480
    title: "What's in my fridge?"
    font.capitalization: "Capitalize"

    /***
     * Header
     ****** */
    header: ToolBar {
        RowLayout {
            id: layoutAppHeader
            anchors.fill: parent
            spacing: 6
            Rectangle {
                color: '#d8bfd8'
                Layout.fillWidth: true
                Layout.minimumWidth: parent.width
                Layout.minimumHeight: 64

                Text {
                    id: appTitleText
                    anchors.centerIn: parent
                    font.pixelSize: 16
                    font.bold: true
                    font.capitalization: "Capitalize"
                    text: qsTr("your available groceries")
                }
            }
        }
    }

    /***
     * Content
     ****** */
    Page1 {
        anchors.fill: parent
    }

    /***
     * Footer
     ****** */
}



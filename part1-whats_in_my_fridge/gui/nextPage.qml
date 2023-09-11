import QtQuick 2.15
import QtQml 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Page {
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
    } // End header

    /***
     * Footer
     ****** */
    footer: TabBar {
        id: layoutAppFooter
        width: parent.width
        contentHeight: layoutAppHeader.height
        TabButton {
            text: qsTr("Home" + "\n" + height)
        }
        TabButton {
            text: qsTr("Discover" + "\n" + height)
        }
        TabButton {
            text: qsTr("Activity" + "\n" + height)
        }
    } // End footer

    Rectangle {
        id: pageContent
        anchors.fill: parent
        anchors.topMargin: 15
        anchors.bottomMargin: 15

        Loader {
            anchors.fill: parent
            source: "qrc:/Page1.qml"
        }
    }

} // End Page

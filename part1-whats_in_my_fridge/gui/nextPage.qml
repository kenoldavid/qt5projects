import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

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
}

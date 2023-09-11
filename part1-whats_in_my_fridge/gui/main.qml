import QtQuick 2.15
import QtQml 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 360
    height: 800
    title: "What's in my fridge?"

    /***
     * Using StackView
     *************************************** */
    StackView {
        id: contentFrame
        anchors.fill: parent
        initialItem: Qt.resolvedUrl("qrc:/loadPage.qml")
    }
}

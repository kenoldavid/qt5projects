import QtQuick 2.12
import QtQml 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 360
    height: 800
//    title: "What's in my fridge?"
//    font.capitalization: "Capitalize"

    /***
     * Content - Using StackView
     *************************************** */
    StackView {
        id: contentFrame
        anchors.fill: parent
        initialItem: "loadPage.qml"
//        initialItem: Qt.resolvedUrl("qrc:/loadPage.qml")
    }

    Component.onCompleted: {
        contentFrame.replace("qrc:/nextPage.qml")
    }

}



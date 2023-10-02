import QtQuick 2.12
import QtQml 2.12 // Required for model, ListModel, ListElement
import QtQuick.Controls 2.12 // Required for ItemDelegate, Button, TextField

Item {
    id: item1

    /*
     * Using ListView
     * */
    ListView {
        id: groceriesListView
        anchors.fill: parent
        anchors.margins: 5

        model: ListModel {
            ListElement {
                name: "Bananas"
            }
            ListElement {
                name: "Orange Juice"
            }
            ListElement {
                name: "Grapes"
            }
            ListElement {
                name: "Eggs"
            }
        } // end model

        delegate: ItemDelegate {
            width: parent.width
            text: modelData.name || index + " - " + model.name
            highlighted: ListView.isCurrentItem
            onClicked: groceriesListView.currentIndex = index
//            onClicked: console.log("highlighted: ", modelData)
            font.bold: (ListView.isCurrentItem) ? true : false

            Button {
                width: height
                height: parent.height
                text: "X"
                anchors.right: parent.right
            }
        } // end delegate
    } // end ListView

    Row {
        id: addItemRow
        height: 64
        //spacing: 16
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: parent.bottom

        Rectangle {
            height: parent.height
            width: parent.width
            anchors.fill: parent
            color: "grey"

            TextField {
                id: addItemField
                anchors.left: parent.left
                anchors.leftMargin: 16
                anchors.verticalCenter: parent.verticalCenter
                placeholderText: qsTr("Enter item name")
            }
            Button {
                id: addItemBtn
                anchors.right: parent.right
                anchors.rightMargin: 16
                anchors.verticalCenter: parent.verticalCenter
                text: qsTr("Add Item")
            }
        }
    } // end Row
} // end Item

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import ObjectListModel

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Object list model")

    ListView {
        id: listViewId
        anchors.fill: parent
        model: personModel
        spacing: 10
        delegate: Rectangle {
            height: 90
            radius: 10
            color: "gray"
            border.color: "darkRed"
            width: rootId.width
            RowLayout {
                anchors.fill: parent
                anchors.margins: 20
                TextField {
                    text: names
                    Layout.fillWidth: true
                    background: Rectangle {
                        color: "white"
                    }
                }
                SpinBox {
                    editable: true
                    value: age
                    Layout.fillWidth: true
                    background: Rectangle {
                        color: "white"
                    }
                }
                Rectangle {
                    width: 50
                    height: 50
                    color: favoriteColor
                }
            }
        }
    }
}

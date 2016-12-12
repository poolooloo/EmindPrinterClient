import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Window {
    id:printerlist
    maximumHeight: 400
    minimumHeight: 400
    maximumWidth: 500
    minimumWidth: 500
    visible:true

    title:qsTr("Add Remote Printers")

    ListModel{
        id:pModel
        ListElement{
            prName: "oneee"
        }
        ListElement{
            prName: "oneee"
        }
        ListElement{
            prName: "oneee"
        }
    }



    ListView{
        id:pView
        anchors.fill:parent
        model:pModel
        delegate:pDelegate
        MouseArea{
//            onEntered: color = "red"
        }
        anchors.margins: 10

    }

    Component{
        id:pDelegate

        Rectangle{
            id:printerItem
            width:printerlist.width-20
            height:50
            Text{
                anchors.centerIn: parent.Center
                id:printerName
                text:prName
                font.pixelSize: 22
            }

            Button{
                id:btnAdd
                width:25
                height:25
                anchors.right: printerItem.right
                anchors.rightMargin: 10
                style:ButtonStyle{
                    background: Rectangle{

                    }
                }
                text:qsTr("Add")

                MouseArea{
                    anchors.fill: btnAdd
                    hoverEnabled: true
//                    onHoveredChanged:  {
//                        style:ButtonStyle{

//                        };
                    onEntered:color = "red"
                    onExited: color = "white"
                }
            }

            MouseArea{
                anchors.fill:printerItem
                onEntered: console.log("eentered")
                onExited: console.log("eexited")
            }
        }


    }


}

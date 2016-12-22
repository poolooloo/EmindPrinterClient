import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import com.client.emindprint 1.0

Window {
    id:printerlist
    maximumHeight: 400
    minimumHeight: 400
    maximumWidth: 500
    minimumWidth: 500
    visible:true

    title:qsTr("Add Remote Printers")

    signal printerAdded(string prName)
    property string printerName
    ListModel{
        id:pModel

    }


    EmindClient{id:client}

    Component.onCompleted: {
        console.log("nice")
        printerlist.printerAdded.connect(client.setDefaultPrinter)
    }


    ListView{
        id:pView
        anchors.fill:parent
//        model:pModel
        model:pModel.data
//        model:pNameListModel
        delegate:pDelegate
        anchors.alignWhenCentered: true
        anchors.margins: 10

    }



    Component{
        id:pDelegate

        Rectangle{
            id:printerItem
            width:printerlist.width
            height:60
            anchors.margins: 20
            Text{
                id:printerName
                anchors.alignWhenCentered : true
                text:modelData
                font.pixelSize: 22
            }


            Button{
                id:btnAdd
                width:40
                height: 40
                anchors.alignWhenCentered : true
                anchors.right: printerItem.right
                anchors.margins:20
                style:ButtonStyle{
                    background: Rectangle{
                        width:control.width
                        height:control.height
                    }
                    label:Text{
                        id:btnText
                        color:control.hovered?"blue":"black"
                        text:busyIndicator.running ? "" : "Add"
                        font.pixelSize: 22
//                        onHoveredLinkChanged:  color="blue"
                    }
                }
                onClicked: {
                    busyIndicator.visible = true;
                    busyIndicator.running = true;
                    printerAdded("item");
                }

                BusyIndicator {
                    id:busyIndicator
                    anchors.fill: parent
//                    anchors.alignWhenCentered : true
                    width:45
                    height: 45
                    visible: false
                    running: false
                }
            }

        }
    }


}




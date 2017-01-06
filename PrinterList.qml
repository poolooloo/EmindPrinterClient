import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import com.client.emindprint 1.0
import "client.js" as Jsclient

Window {
    objectName: "printerWin"
    id:printerlist
    maximumHeight: 400
    minimumHeight: 400
    maximumWidth: 500
    minimumWidth: 500
    visible:false

    title:qsTr("Add Remote Printers")
    property string pnameStr1: ""
    property var pNameList:[]

//    signal setDefaultPrinter(var text,var idx)

//    signal printerAdded(string prName)
//    property string printerName

//    PrinterListModel{
//        id:pModel
//    }
//    EmindClient{
//        id:client
//    }

    Connections{
        target: printerlist
        onShowList:{
            var pname = new Array;
            pname= Jsclient.g_str.split(',');
            console.log(pname);
            for(var i=0;i<pname.length;i++)
                pModel.append({"prname":pname[i]});
        }

    }

    ListModel{
        id:pModel

//test element
//        ListElement{
//            prname:"nice"
//        }
//        ListElement{
//            prname:"nice"
//        }
//        ListElement{
//            prname:"nice"
//        }
    }

    ListView{
        id:pView
        anchors.fill:parent
        model:pModel
        delegate:pDelegate
        anchors.alignWhenCentered: true
        anchors.margins: 10
        highlight: highlighter

    }


    Component{
        id:highlighter
        Rectangle{
            width: printerlist.width
            height:60
            MouseArea{
                anchors.fill: parent
                onHoveredChanged: parent.color = "#f5f5f5";
            }


        }
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
                text:prname
                font.pixelSize: 18
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
//                    console.log("index=",index);
                      client.setDefaultPrinter(printerName.text,index);
//                    busyIndicator.visible = false;
//                    busyIndicator.running = false;
                }

                BusyIndicator {
                    id:busyIndicator
                    anchors.fill: parent
                    width:45
                    height: 45
                    visible: false
                    running: false
                    Timer{
                        id:timer
                        interval: 1000
                        running: true
                        repeat: true
                        onTriggered:
                        {
                            busyIndicator.visible = false;
                            busyIndicator.running = false;
                        }
                    }

                    Connections{
                        target: printerlist
                        onStopSpinner:{
                            console.log("stop busyIndicator");
                            timer.start();

                        }
                    }


                }
            }

        }
    }


}




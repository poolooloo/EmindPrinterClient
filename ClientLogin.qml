import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.4
import com.client.emindprint 1.0
import "client.js" as Jsclient

Window {
    objectName: "clientWin"
    id:clientWin
    width: 400
    height: 240
    //    title: qsTr("Add Printer")
    maximumHeight: 240
    minimumHeight: 240
    maximumWidth: 400
    minimumWidth: 400
    visible:true

    property variant printerNameList:""
    property int reqok:0
    property int reqAuth:0

    signal showPrinterWin()

    EmindClient{
        id:client
        onRcvCupsFile:clientWin.visible = false;
        onSigConnected: {
            clientWin.hide();
            showPrinterWin();
        }
        onSigAuthWrong:errText2.visible = true;
    }




    Button {
        objectName:"btnCancel"
        id: btnCancel
        x: 88
        y: 173
        width: 103
        height: 36
        style: ButtonStyle {
            background: Rectangle{
                radius: 5
                border.color: "black"
            }
        }

        text: qsTr("Cancel")

        onClicked:
        {
            Qt.quit();
        }




    }


    Button {
        objectName:"btnNext"
        id: btnNext
        x: 210
        y: 173
        width: 103
        height: 36
        style: ButtonStyle {
            background: Rectangle{
                radius: 5
                border.color: "black"
            }
        }

        text: qsTr("Next")

        enabled: Jsclient.enableBtnNext()
        property int reqcount: 0

        onClicked:
        {
            btnNext.enabled = false;
            if(client.checkConnectivity(fieldIP.text)){
                client.sndReqLicense(fieldLicense.text);
            }else{
                //errText2.text = client.err;
                errText1.visible = true;
                errText2.visible = false;
            }
            btnNext.enabled = true;
        }
    }

    Text {
        id: text1
        x: 62
        y: 49
        width: 119
        height: 29
        opacity: 0.9
        font.pixelSize: 14
        text:qsTr("Server Address:")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WordWrap
    }

    Text {
        id: text2
        x: 65
        y: 113
        width: 119
        height: 30
        font.pixelSize: 14
        text:qsTr("  License:")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WordWrap
    }

    Text {
        objectName: "errText1"
        id: errText1
        x: 158
        y: 79
        width: 182
        height: 28
        text: qsTr("Connect failed")
        visible: false
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        //        wrapMode: Text.WordWrap
        font.pixelSize: 14

    }

    Text {
        objectName: "errText2"
        id: errText2
        x: 158
        y: 142
        width: 182
        height: 31
        text: qsTr("License error")
        visible: false
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 14
    }

    TextField {
        id: fieldIP
        x: 202
        y: 50
        width: 121
        height: 29
        font.pixelSize: 12
        placeholderText: qsTr("")
        focus: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        //        inputMask: "\\  \\  \\  .\\ \\ \\ .\\ \\ \\ .\\ \\ \\ ;_"
    }

    TextField {
        id: fieldLicense
        x: 203
        y: 112
        width: 120
        height: 30
        font.pixelSize: 12
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        placeholderText: qsTr("")

    }

    Item {
        id:printerlist
        width:500
        height:400
    }





}

import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.4
import com.client.emindprint 1.0


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

    Loader { id:printer }

    EmindClient{id:client}

    Button {
        objectName:"btnNext"
        id: btnConn
        x: 203
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

        MouseArea{
            anchors.fill:parent
            onClicked:
            {
                if(client.checkConnectivity(textField1.text,textField2.text))
                {
                    printer.source="PrinterList.qml";
                    clientWin.visible = false;
                }
            }


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
        id: text3
        x: 158
        y: 79
        width: 182
        height: 28
        text: qsTr("error:conenct failed")
        visible: false
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        //        wrapMode: Text.WordWrap
        font.pixelSize: 14

    }

    Text {
        objectName: "errText2"
        id: text4
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
        id: textField1
        x: 202
        y: 50
        width: 121
        height: 29
        font.pixelSize: 12
        placeholderText: qsTr("")
        focus: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        inputMask: "000.000.000.000;_"
    }

    TextField {
        id: textField2
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

    //    Rectangle {
    //        id: rectangle1
    //        x: 138
    //        y: 7
    //        width: 200
    //        height: 29
    //        color: "#000000"
    //        z: -1

    //        TextInput {
    //            id: textInput1
    //            x: 138
    //            y: 12
    //            width: 80
    //            height: 20
    //            text: qsTr("Text Input")
    //            font.pixelSize: 12
    //        }
    //    }

}

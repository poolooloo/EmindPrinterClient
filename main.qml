import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.4

ApplicationWindow {
    objectName: "rootObj"
    id:root
    width: 400
    height: 240
//    title: qsTr("Add Printer")
    maximumHeight: 240
    minimumHeight: 240
    maximumWidth: 400
    minimumWidth: 400


    Loader{
        source:"ClientLogin.qml"
    }



}

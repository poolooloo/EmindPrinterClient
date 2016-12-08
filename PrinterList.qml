import QtQuick 2.0
import QtQuick.Window 2.2

Window {
    id:printerlist
    maximumHeight: 400
    minimumHeight: 400
    maximumWidth: 500
    minimumWidth: 500
    visible: true


    ListModel{
        id:pModel

    }



    ListView{
        id:pView
    }

    Component{
        id:pDelegate
    }
}

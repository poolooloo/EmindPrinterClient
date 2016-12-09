import QtQuick 2.0
import QtQuick.Window 2.2

Window {
    id:printerlist
    maximumHeight: 400
    minimumHeight: 400
    maximumWidth: 500
    minimumWidth: 500


    ListModel{
        id:pModel

    }



    ListView{
        id:pView
        model:pModel
        delegate:pDelegate

    }

    Component{
        id:pDelegate
        Text{
            text:"hello"
        }
    }


}

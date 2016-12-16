function enableBtnNext(){
    if((fieldIP.text !== "") && (fieldLicense.text !== "")){
        return true;
    }else{
        return false;
    }
}


function travelList(obj){
    for(var pname in obj){
        if(printerlist.pmodel.count === 0 )
            printerlist.pmodel.insert({"name":pname});
        else
            printerlist.pmodel.insert({"name":pname});
    }
}

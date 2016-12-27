function enableBtnNext(){
    if((fieldIP.text !== "") && (fieldLicense.text !== "")){
        return true;
    }else{
        return false;
    }
}


function travelList(obj){
    for(var pname in obj){
        console.log(pname);
//        if(printerlist.pView.count === 0 )
//            printerlist.pmodel.insert(0,{"name":pname});
//        else
//            printerlist.pmodel.append({"name":pname});
    }
}

function rcvFile(){
    console.log("hello");
}

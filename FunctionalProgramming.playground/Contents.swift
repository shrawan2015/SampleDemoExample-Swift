//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


struct  Model {
    
    var name:NSString?
    var surname:NSString?
}


var v1 = Model(name:"sss",surname: "df")
var v2 = Model(name: "eee",surname: "fdfdf")

var arrayName = [Model]()
arrayName.append(v1)
arrayName.append(v2)



class BaseClaww {

func extract(arranyName2:NSArray) -> NSArray {
    return arranyName2
}


func extract2(array2:NSArray) -> NSArray {
    
    return array2

}

}




protocol BascicProtocol {
    func newFun()
    
}


extension BascicProtocol{
    func newFun(){
        print("this is the extension")
    }
}
struct newStruct : BascicProtocol   {
    
    
    
    
}

var x=newStruct()


x.newFun()




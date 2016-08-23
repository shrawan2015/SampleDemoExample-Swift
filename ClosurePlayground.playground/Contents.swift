//: Playground - noun: a place where people can play

import UIKit
import Foundation



var str = "Hello, playground"


//Closure in the Swift



var noParameterorReturnVlaue: () -> () = {
    
    print("this is the first closure")
    
}


var pqr: (String) -> (String)  =  {  name in
    
    print(name)
    return name

}


pqr("sdfdfdf")



var pqr3 = { (name:NSString) -> (NSString) in
print(name)
    return name


}

print(pqr3("sdfsdfd"))



//Closure for passing the mehtods



var myclosure2 = {
    

print("this is function closure")
}


func completaion(x:NSString, name: ()-> Void) {
    print("this is the closure fuction")

    myclosure2()
    
    
}

completaion("sks",name: myclosure2)


var closureName22 = {  (nanme:NSString) -> NSString

in
    print("this is the string ")
    return nanme
}

var closeAnother22 = {
    
    (name:NSString,anotherName:NSString) in
    
    print("\(name), \(anotherName)")
    
    
    
}

//Closure 

closeAnother22("sss","ddd")
closureName22("ddd")


class NewClass {
    var newinstanc:NSString
    var anotherinstance:NSString
    init()
    {
        newinstanc="new instance"
        anotherinstance="new instance"
    }

    func printDescription()
    {
        //print("\(newinstanc)  \(anotherinstance) ",)
    }
}

var newClass = NewClass()
newClass.printDescription()

//NewClass.init()

//
//protocol ProtocolName {
//    
//}


func getBoolValue(number : Int, completion: (result: Bool)->() ) {
    if number > 5 {
        completion(result: true)
    } else {
        completion(result: false)
    }
}



getBoolValue(23) {
    
    (boolValue) -> () in
     print(boolValue)
    
    print("this is the completion handler")
    
}





func NetworkCall( url:NSString? , completetion: (result:NSString) -> ()  ) {
    
    if url != nil {
        print(url)
    }

    completetion(result:"URL")
    
    
}



















        
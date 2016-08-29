//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//@noescape  help  ot block accesiblity of the closure to another closure 
//no need to use the self in the closure
var closureVariable :(()->Void)?

func noExcepClosure(@noescape passData:()->Void) {
    
    closureVariable = passData
    
    
}


//AUTOCLOSURE
//it will help to stop the calling the closure immediately.



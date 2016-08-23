//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


struct Town {
    var population:Int
    init() {
        population=45
    }
    
    
}

//var town = Town(population: 45)


var town = Town()


print( town.population )


class BaseObject {
    var population:Int
    init(population:Int) {
        self.population=population
    }
    
    //convenience init
}


class Child: BaseObject {
    var newPopulation:Int
    init(new2:Int){
        newPopulation=new2
        super.init(population: 45)
        
    }
    
    init(new2:Int,NEWbASE:Int){
        self.newPopulation=new2
        super.init(population: 44)
    }
    
    
}



protocol ChildProtocol {
    
    var valueString:Int {get}
    
    
    
}

protocol  ParentProtocol:ChildProtocol {
    var newVlue:NSString {get}
}


class ImplementHeritedProtocol: ParentProtocol {
    
    var value:Int = 0
    
    var valueString: Int=4545
    
    
    var newVlue: NSString = "dfdff"
    
    
    
}


protocol  ExtemsionType {
    var Value:Int {get}
    func NewFuncProtocol()
    
}


extension ExtemsionType { //Default nature of the protocol
    
    var Value : Int {
        return 34
    }
    
    func NewFuncProtocol() {
        print("this is the protoocl conformation")
    }
}

class NewCla: ExtemsionType {
    func extractValue() {
        print(Value)
    }
}
var newClass = NewCla()
newClass.extractValue()
newClass.NewFuncProtocol()




protocol NewProtocol {
    func NewFUN()
}

extension NewProtocol {
    
    func NewFUN() {
        
        print("tjos os tj eenxtion class")
    }
    
}



class Clasnnn:NewProtocol {
    var vaaaa=34
}

var rrr=Clasnnn()
rrr.NewFUN()











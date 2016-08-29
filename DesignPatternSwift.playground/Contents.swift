//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"




protocol executeTask {
    func execute() -> String
}


class OpenDoor:executeTask {
    
    var door:String
    init(door:String) {
        self.door = door
    }

    func  execute() -> String {
        return "open \(door)"
    }
    
}


class CloseDoor:executeTask {
    
    var door :String
    init(door:String) {
        self.door = door
    }

    func execute() -> String {
        return "closed \(door)"
    }
}


class MainClass {
    
    
    var openObj:executeTask
    var closedObj:executeTask
    
    init(doors:String) {
        self.openObj = OpenDoor(door:doors)
        self.closedObj = CloseDoor(door:doors)
    }
    
    
    func openDoor() -> String {
        
        return openObj.execute()
        
    }
    
    func closeDoor() -> String {
        return closedObj.execute()
    }
    
    }

let doorName = "jantaDoor"
let classObj = MainClass(doors: doorName)
classObj.openDoor()


//Interpretor design patter

class Intepretor {
    
    var variable: String
    init(variable:String) {
        self.variable = variable
    }
    
    func applyTask() -> String {
        return variable
    }

    func getData() -> String {
        return variable
    }
    
    
}



//Iterator Design Patterns
//Travesing the collection of the items in the array


struct NovellasCollection<T> {
    let novellas: [T]
}

extension NovellasCollection: SequenceType {
    typealias Generator = AnyGenerator<T>
    
    func generate() -> AnyGenerator<T> {
        var i = 0
        return AnyGenerator { i += 1; return i >= self.novellas.count ? nil : self.novellas[i] }
    }
}

let greatNovellas = NovellasCollection(novellas:["Mist"])

for novella in greatNovellas {
    print("I've read: \(novella)")
}





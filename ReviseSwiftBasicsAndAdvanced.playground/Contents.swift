//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var dictionary2 = ["shrawan":"sharma", "Rajat":"Somani"]

for (name,surname) in dictionary2 {
    
    print("\(name), \(surname)")

    
}


print(dictionary2.count)


for ductinaoyVlue in dictionary2.values {
    print(ductinaoyVlue)
    
}
for ductionanyt in dictionary2.keys {
    print(ductionanyt)
}


func funNmae(Name:String) -> String {
    print(Name)
    return Name
}

let k=funNmae("sks")


print(k)


enum EnumerationType {
    
    case North
    case South
    case West

    
    
}

enum CompassPoint: String {
    case North, South, East, West
}


print(CompassPoint.North.rawValue)


enum Planet: Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}




class FirstClass {
    var x=23
}

var first=FirstClass ()
var second = first

print(first.x)


if(first === second) {
    print("this is poointing to same instance ")
    
    
}



struct FirstClass2 {
    var x=23
}

var first2=FirstClass2 ()
var second2 = first

print(first.x)


//if(first2 === second2) {   //cannot compare the 2 object in the struct
//    print("this is poointing to same instance ")
//    
//    
//}




struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}


var sss = SomeStructure()
//we can call the static method to the instace type
SomeStructure.storedTypeProperty


class Vehicle {
    var currentSpeed:Int
    init () {
        currentSpeed = 44
    }
    
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}


protocol FullyNamed {
    var fullName: String { get }
}

class Starship: FullyNamed {
    var prefix: String?
    var name: String
    init(name: String, prefix: String? ) {
        self.name = name
        self.prefix = prefix
    }
    var fullName: String {
        return (prefix != nil ? prefix! + " " : "") + name
    }
}
var ncc1701 = Starship(name: "Enterprise", prefix: "USS")

var www = Starship(name:"nsmr", prefix:nil)


// ncc1701.fullName is "USS Enterprise"



class ClasName<T> {
    var firsStr:T
    init(name:T)
    {
        firsStr=name
    }
}


var obj = ClasName<String>(name:"sks")
print(obj.firsStr)


//can assign for the function name alse


//extension ClasName {
//    var topItem: Element? {
//        return items.isEmpty ? nil : items[items.count - 1]
//    }
//}
//




typealias Velocity = Double

extension Velocity {
    
    var KMS:Velocity {return self * 0.02}
    
    }


class ClassNamw {
    var topspeed:Velocity = 222.0
    
    init(name:Double )
    {
        topspeed=name
    }
    
}


var OBJ = ClassNamw(name:333.4)
print(OBJ.topspeed.KMS)














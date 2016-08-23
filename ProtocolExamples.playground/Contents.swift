//: Playground - noun: a place where people can play

import UIKit



//Protocol is blueprint of method properties and other requirement.

///You can extend the protocols


//Declaration of protocols

protocol SomeProtocol {

    //Function cannot have bodies.
    
    func madatoryFunc()
//    {
//    print("this is the func")
//    }

}

//To conform the protocol in the class

class ParentClass  {
    var stringN:NSString?
}

class ChildClass: ParentClass,SomeProtocol {
    var childClassv = 43
    
    func madatoryFunc() {
        print("this is the child class")
    }
    
}

//Protocol can have stored And computational properties
//Protocol specifies whether is get or set or both

//IF IT IS GETTABLE AND SETTBLE THEN IT CANNOT STORE THE STORED PROPERTIES
//IF IT IS ONLY GETTABLE THEN IT CAN BE ANY KIND OF PROPERTY 


/*----NOTE----
 If a protocol requires a property to be gettable and settable, that property requirement cannot be fulfilled by a constant stored property or a read-only computed property. If the protocol only requires a property to be gettable, the requirement can be satisfied by any kind of property, and it is valid for the property to be also settable if this is useful for your own code.
 
 */

protocol someProtocol2 {
    var mustSet:Int {get set}
}

class NewClass: someProtocol2 {
    var mustSet: Int=34
}


protocol someProtocol3 {
    var  mustSet:Int {get}
    
}


class NewClass3: someProtocol3 {
    
//    var mustSet: Int=45
    var mustSet:Int = 0
}

struct NewStruct :someProtocol3 {
    var mustSet: Int
    
    
}




///TYPE PROPERTY IN THE SWIFT  i.e ClassName.Proprties


protocol TypePropertyWithProtocol {
    static var fullname:NSString  {get}
}



/*
 
 Variadic parameters are allowed, subject to the same rules as for normal methods. Default values, however, cannot be specified for method parameters within a protocol’s definition.
 
 */

//TYPE REQUIREMENT IN THE FUNCTION

protocol TypeProtocol {
    static func protocolName()
}


//Mutating Method in the Protocol 
/*
 Mutating is used to change the variable in the value type i.e struct and enum
 if the function is changing the value then it shuld start with mutate word
 
 
 //NO NEED TO WRITE MUTATING IN THE CLASS IF CONFORMING THE PROTOCOL
 
 */


//E.G

protocol ToggleValueProtocol {
    mutating func changeTheValue()
}

enum OnOffEnum:ToggleValueProtocol {
    case off,on
    
    mutating func changeTheValue() {
        switch self {
        case .off:
            self=on
        default:
            self=off
        }
    }
}

var lightValue = OnOffEnum.off

lightValue.changeTheValue()


///WE CAN FORCE TO INITLIZE THE CLASS IN THE PROTOCOL

protocol someProtocolToIntilize {
    init(someParamater:Int)
    
}

//SO we can use above protocol in the designated or the convnience initlizer


class SomeClassInitByProtocol: someProtocolToIntilize {
    
    required init(someParamater: Int) {  //required is must when we implement the init in the protocol
        //Required is used to tell the compiler that explixit or inherited implemenatiob of the initilizer 
        
        //if the class is final then no need of the required parameter because the final class cannot be inherited
        
        
        print("this is the init")
    }
    
}

//class SomeClassInitByConvenience: someProtocolToIntilize {
//    
//    convenience required init(someParamater: Int,someAnotherParameter:Int) {
//        print("this is the init")
//        self.init(someParamater:3)
//    }
//}




protocol SomeProtocol33 {
    init()
}

class SomeSuperClass {
    init() {
        // initializer implementation goes here
    }
}

class SomeSubClass: SomeSuperClass, SomeProtocol33 {
    // "required" from SomeProtocol conformance; "override" from SomeSuperClass
    required override init() {
        // initializer implementation goes here
    }
}



/*

/////Protocol is the type in the swift

As a parameter type or return type in a function, method, or initializer
As the type of a constant, variable, or property
As the type of items in an array, dictionary, or other container


*/

protocol ProtocolType {
    func name()
}


class ClassNameWithProtoclType {
    let generator:ProtocolType
    
    init(generator:ProtocolType){
        self.generator=generator
    }
}



var classVar=ClassNameWithProtoclType()

//Dout in the passing the protocol as the type in swift

///Extensions can add new properties, methods, and subscripts to an existing type, and are therefore able to add any requirements that a protocol may demand. For more about extensions, see Extensions.

protocol TextRepresentable {
    var textualDescription: String { get }
}


//Here dice2 is the class that is implmented the protocol
extension Dice2: TextRepresentable {
    
    var textualDescription: String {
        return "A \(sides)-sided dice"
    }
    
}


protocol AnotherProtocol {
    func secondfunc()
}



protocol InheritingProtocol: SomeProtocol, AnotherProtocol {
    // protocol definition goes here
    
    var prettyTextualDescription: String { get }

}

////We can make the protocol onle fot the class  onlue
protocol SomeClassOnlyProtocol: class, SomeInheritedProtocol {
    // class-only protocol definition goes here
}






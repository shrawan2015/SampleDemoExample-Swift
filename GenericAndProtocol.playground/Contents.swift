//: Playground - noun: a place where people can play


//Generic Basics and Advanced Protocol Examples



import UIKit
import Foundation

var str = "Hello, playground"

func nameDetain(price:Int) {
    print("int price \(price)")
    
}

print("this is the generic class")

func nameDetain(price:Float)
{
    print(" the float price is \(price)")
}



///2 Different type of the function in the swift so no of code increase 
//Generic can reduce the no of line of code size .
nameDetain(23)
nameDetain(34.0)


//Generic function
func price<T>(price:T)
{
    print("this is the generic class ")
    print(price)
}
price(34)
price(45.9)


//More than 2 type in the generic type in the swift
func genericType<T,V>(name:T,value:V){
    
    print(name,value)
    
}


//Type parameter in the swift to declare the generic type in the swift
genericType("ssss", value: 23)

//WE CAN GIVE THE DIFFERENT TYPE IN THE PARAMETER ARGUMENT
genericType(23,value:34)





//Generic TYPE IN THE SWIFT TO DEFINCE GENERIC CLASS AND STRUCT
//WE CAN HAVE THE GENERIC TYPE OF TYPE IN THE CLASS SO THE STRUCT CAN BE GENERIC 
//SUPPOSE THE STACK WHICH MAY HAVE FLOT ,STRING OR INT TYPE THEN WE HAVE TO MAKE 3 TYPE

//Instead make Generic Type Struct,Class
//Onlye differnece in <Element> in the struct declaration

struct Stack<Element> {
    
    var items = [Element]() //bracket means that it is initilize with 0
    
    mutating func push(no:Element){
        items.append(no)
    }
    
    mutating func pop()       ///mutating is used to chagne the value in the value type.
    {
        items.removeLast()
    }
    
    func countArray () -> Int {   //No mutating because we are not changing the value
        return items.count //as! element
    }
    
    func topValue() -> Element? {    // Return type is OPTIONAL TYPE  //Unwrap while extracting
        
        //See the magic by removing the ? i.e error since optinal type say that it can have nil type
        
        
//        return ( items.isEmpty ? nil : items[ items.count - 1 ] )
          return ( (items.count == 0 as Int) ? nil : items[items.count - 1] )
    }
    //why we cannot do this         return ( (items.count != 0 as Int) ? nil : items[count-1] )

}

var stackVaraibel=Stack<Int>()
stackVaraibel.push(34)
stackVaraibel.push(111)

let count=stackVaraibel.countArray()
let topElement = stackVaraibel.topValue() //No need of ! beacuase optiotnal late binding by late

if( stackVaraibel.topValue() > 99)
{
    print("this is > 99")
}
else {
    print("it is less than 99")
}




//TO EXTEND THE FUCNTIONALITY OF THE STACK --Adding more feature in the stack by extension & Genric
extension Stack{
    
    //Uncomment it to see the error
    //var element222="dfdfdf" ///Extension cannot have the stored properties
    
    //EXTENSION CANNOT CONTAIN STORED PROPERTIES
    //var topEleme=34
    
//      func topElemet() -> element {
//        return ( items.isEmpty ? nil : items[items.count - 1] )
//    }
    
   
    //THIS IS THE COMPUTED PROPERTIES IN THE EXTENSION
    var topItem: Element? {
       
        return items.isEmpty ? nil : items[items.count - 1]
         //return 5 as? Element  //can do this technique for the stored propeties
        
    }
    
    func topElement() -> Element? { //? is important because compiler must know that there is nil value
        return items.isEmpty ? nil : items[items.count - 1] //as! Element
    }
   
}

print(stackVaraibel)
print(stackVaraibel.items)
stackVaraibel.topElement()
stackVaraibel.countArray()

var variable:Int = stackVaraibel.topItem!
//unwrap the optional variale in the swift



///Type constraints specify that a type parameter must inherit from a specific class, or conform to a particular protocol or protocol composition.
//Type Constraint Syntax
//This means that the it should conform that the generic must be of that class or protocol to implement ///example if we pass the element that is equal by the struct value doesnot support equatable class so we have to say that ite should support the 
////Equatabel protocol


//Useful to constraint the generic type to be specific and follow some rule



//TO FIND THE ELEMENT IN THE ARRAY OF STRING
func findTheIndex( arrayName: [NSString]?, str:NSString?) -> Bool {
    
    for strName in arrayName! {
        if str! == strName{
            return true
        }
    }
    return false
}


var arrayName=["first","second","third"]

var stringFind="first"
let find=findTheIndex(arrayName, str: stringFind)

print(find)

//TO FIND THE ELEMENT IN THE ARRAY IN GENRIC
//To make the generic we put the generic type parameter in the funciton
func findIndex2<GTYPE>(arrayName:[GTYPE],stringToFind:GTYPE) -> Bool?
{
    for str in arrayName {
        
        //UNCOMMENT IT TO SEE THE MAGIC //WE CANNOT COMPARE THE GENERIC TYPE BECAUSE STRUCT TYPE CANNOT BE EQUATE SO SWIFT HAVE GIVEN THE PROTOCOL WHO CAN EQUATE  SO USE THE PROTOCOL
        
//        if str   == stringToFind  {
//            // Not every type in Swift can be compared with the equal to operator (==)
//            return true
//        }
        
    }
    
    return false
    
    
    
    
}





///Constraint type in the generic type  

//Privious className<T>
//Now className<T:Equatable>  //i.e must follow the equatable protocol

//for function  Prvious-- funcName<T>       Now ---funcName<T:ProtocolNameConstriants>


func findIndexWithConstraint<T:Equatable>(arryName:[T],stringToFind:T) ->Bool {
    
    
    
    for str in arrayName {
        
        if str == stringToFind as! String {
            return true
        }
        
    }
    return false
}

let var33=findIndexWithConstraint(arrayName, stringToFind:"first")
//Above function tell that there is constrain to follow the protocol in the swift
//class in the swift it must follow that rule




//Associated Types in Action this is must important concept in the swfit
//this tell that the protocol can be generic type in teh protocol and the stack or the class that will implement send the type to the prottocol about the type in teh typealias the assicited protocol in the swift





//Protocol can be generic by associted type

//Declare associatedtype in the protocol and typealiias in the struct in the struct.

protocol associatedProtocol {
    associatedtype typeName //Int
    func retuntIndex(name:typeName  ) -> Bool
}


struct AssociatedStruct:associatedProtocol{
    typealias typeName = Int
    
    func retuntIndex(name: typeName) -> Bool {
        return true
    }
    
}

var structVar = AssociatedStruct()
structVar.retuntIndex(23)


//Above was the simple example of the assocaited protocol in the swift it help for the generic protocol in the swift
//Now we can use this tips in the generic stack with generic Protocol which extend it  where we can have the generic class in the class



//example of generic stack and generinc protocol
struct StackWithAssocaitedProtocl<GENERICtyPE>
{
    var element=[GENERICtyPE]() //BRACKET IS IMPORTANT FOR THE INITILIZATION 
    
    
    mutating func addNo(varaible:GENERICtyPE) {   ////mutating  ??????? struc :)
        element.append(varaible)
    }
    
    
    mutating func popElement()  {
        element.removeLast()
    }
    
    
    mutating func lastElement() -> GENERICtyPE? {  /// ? is important if not given there is error which cannot be  found out in the code so beb careful in the return type of optional typep

        return ( element.isEmpty ? nil : element[element.count - 1 ] )
    }
}



//CREATING THE ASSOCIATED PROTOCOL .I.E GENERIC PROTOCOL

protocol stackProtocol {
    associatedtype protocolType
    
    
    func count(varaible:protocolType)
    
}


//Use of the assocaited type in the struct type to conform the protocol to have the type of the element of the type prototocl
struct StackWithAssocaitedProtocl2 <Element> : stackProtocol  {
   
    /// Not madatory typealias protocolType = Element
    
    func count(varaible:Element ) {
        print("this is the implementation of the assicated type ")
    }
    
    
}





//WHERE CLAUSE IN TEH ASSOCAITED TYPE 
//A where clause enables you to require that an associated type must conform to a certain protocol, or that certain type parameters and associated types must be the same


//left the example ADVANCED TOPIC

//Complete the task before

//////***************COMPLETE GENERIC TYPE IN THE SWIFT**********************/////


//Example of the struct in the swift 
struct StructName {
    
    
    var variable=2
    
    static func TypeMethod() -> Int? {
       // variable=45
        return 2
    }
    
//    class func TypeMethod2() -> Int? {
//        // variable=45
//        return 2
//    }
}

let x = StructName.TypeMethod()


//let y = StructName.TypeMethod2()

class StructName2
{
    
    
    static var variable=2
    
    class func TypeMethod() -> Int? {
      
        self.variable=45
        
        return 2
    }
    
    class func TypeMethod2() -> Int? {
        // variable=45
        return 2
    }
}


/////CLASS AND STATIC METHOD//////
//Class can override the class method in the swift

class SwiftClass {
    
    
     class func InstanceMethod ()
     {
        print("this is the parent class")
    }
    
}


class ClildClass: SwiftClass {
   
    override class func InstanceMethod()
    {
        print("this is  the child class")
    }
    
    
}


//cannot declare the class with the swift class and override the method 
//Cannot call the override in the static

//class SwiftClassWithStatic
//{
//    static func staticFun() ////we cannot override the statuc fuction in the swift
//        //we have to declare the class
//    {
//        print("this is hte paretn class")
//    }
//}
//
//class SwiftClassChildWithStatic: SwiftClassWithStatic {
//    
//    override static func staticFun()
//    {
//        print("this is hte paretn class")
//    }
//}






var xx: AnyObject? = "Test"

print(xx!)
print(xx as? String)





//x as String? // OK, the result is an optional string
x as? String // OK, evaluates to an optional string
"string" as String? // OK, evaluates to optional string

//x as? Int // OK, evaluates to nil, it's not an Int
x as Int? // Runtime except


@objc protocol NewProtoclTOCheckOptional {
//    var element:NSString {get}
//    var secondElement:NSString {get}
//    
    
    func addNumber()
}


class ClassName: NewProtoclTOCheckOptional {

    @objc func addNumber() {
        print("this is the number")
        
    }
    
}




////ADVANCED PROTOCOL TUTORIAL IN SWIFT


//Protocol Composition 

protocol TabularDataSource {
    func f1()
}

protocol ConvertingProtocol {
    func f2()
}
///COMPOSITION PROTCOL 
//OBJEC THAT IS PASSING MUST CONFORM THE 2 PROTOCOLS
func funName(dataSource:protocol<TabularDataSource,ConvertingProtocol>) {
    
    
}


//Protocol Inheritance
protocol Inheritedprotocol:TabularDataSource {
    
    func F3()
}

struct NewStruct:Inheritedprotocol {
   
    
    //Comment the f1 to see the magic
    func f1() {
        print("first Protocol")
    }
    
    func F3() {
        print("inherited protocol")
    }
    
}



////ADVANCED EXTENNSION EXAMPLE IN SWIFT


//Extend the Double type to find the first word //can extent the double type

//Protocol is used in Following Snerio
/*
 Computed properties
 new ininitlizers
 protocol conformance
 new methods
 embedded types
 
 */


/**
 extend the functionality to the existing type whose difination is not available
 
 
 
 *///



typealias VelecityAlias = Double //giving new name the Double //alternative type name



extension VelecityAlias {
//   var kpj: //extension cannot contain stored properties
    var kph:VelecityAlias {return 4}
    
}















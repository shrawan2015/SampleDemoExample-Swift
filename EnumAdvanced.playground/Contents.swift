//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"




//
//  Enumeration.swift
//
//
//  Created by ShrawanKumar Sharma on 15/07/16.
//
//

import Foundation

//An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.


//nstead, the different enumeration cases are fully-fledged values in their own right, with an explicitly-defined type of CompassPoint.
enum TabBarController {
    
    case FirstTab
    case SecondTab
    case ThirdTab
    case FourthTab
    
    init(){
        self = .ThirdTab
    }
    
}



enum TabBar {
    case first,sec,third,fourth
    
    init() {
        self = .sec
    }
}

var tabVar=TabBarController()

//let x=TabBar()
//print(x)
//var tabBar = TabBar()


enum TabControllerTab {
    
    case first
    case second
    
}


var tab=TabControllerTab.first
print(tab)



///MAPPING THE ENUM TO INTEGER ,STRING 

enum Controller:Int {
    case c1 = 0
    case c2
    case c3
}

enum Movement {
    case Left
    case Right
    case Top
    case Bottom
}

let aMovement = Movement.Left
print(aMovement)



/////*****Enum Values *********//////

enum Movement2:Int {
    case Left = 0
    case Right
    case Top
    case Bottom
}

let aMovement2 = Movement2.Left
print(aMovement2)


let aMovement3 = Movement2.Left.rawValue
print(aMovement3) //Raw value is used to have the value of the enum


enum Movement3:NSString {
    case Left = "LEFT"
    case Right = "RIGHT"
    case Top = "TOP"
    case Bottom = "BUTTON"
    
//    func switchCaw(Self) {
//        switch( 	)
//    }
}


var momString = Movement3.Left.rawValue


print(momString)



enum Constants: Double {
    case π = 3.14159
    case e = 2.71828
    case φ = 1.61803398874
    case λ = 1.30357
}


enum ConnectionState: Int {
    case Unknown = -1
    case Disconnected
    case Connecting
    case Connected
}



var connnectionVar=ConnectionState.Connected.rawValue

var connectedState2 : ConnectionState = .Unknown
print(connectedState2)
print(connnectionVar)

enum ConnectionState33 {
    case Unknown
    case Disconnected
    case Connecting
    case Connected
}

var connectionState = ConnectionState33.Connecting

connectionState = .Connected

switch connectionState {
case .Disconnected:
    print("Disconnected")
case .Connecting:
    print("Connecting")
case .Connected:
    print("Connected")
default:
    print("Unknown State")
}



//func canConnect(connectionState: ConnectionState33) -> Bool {
//    var result = false
//    
//    switch connectionState {
//    case .Connected(let port):
//        if port == 3000 {
//            result = true
//        }
//    default:
//        result = false
//    }
//    
//    return result
//}

//let state = ConnectionState.Connected(3000)
//
//if canConnect(state) {
//    // ...
//}


//Value Types


enum Example {
    case A
    case B
    case C
    case D
}

var example = Example.A          // (Enum Value)

print(example)

example = .B


print(example)

var A=Example.A

print(A)


enum Types {
    case Str(String)
    case Num(Double)
}


//ASSOCIATED TYPE IN THE ENUM

var  TYPE = Types.Str("DFDF")
print(TYPE)


//////Raw Values
enum ConnectionState44 {
    case Unknown
    case Disconnected
    case Connecting
    case Connected
}

var connectionState44 = ConnectionState44.Connecting

connectionState44 = .Connected

switch connectionState44 {
case .Disconnected:
    print("Disconnected")
case .Connecting:
    print("Connecting")
case .Connected:
    print("Connected")
default:
    print("Unknown State")
}



func canConnect(connectionState: ConnectionState44) -> Bool {
   
    let result = false
    
    switch connectionState {
//    case .Connected(let port):
//        if port == 3000 {
//            result = true
//        }
//    default:
//        result = false
//    }
    
    case .Connected:
        print("this is the connected state")
        return false
    
    default:
        print("this is the not required  in")
        
        
    return result
 }
}

var x=canConnect(connectionState44)
print(x)


///3. Associated Values



enum ConnectionState55 {
    case Unknown
    case Disconnected
    case Connecting(Int, Double)
    case Connected(Int)
}


/*
TheConnecting member has an associated value of type (Int, Double), specifying the port number and timeout interval of the connection.
*/


var connectionState55 = ConnectionState55.Connecting(3000, 30.0)

print(connectionState55.0)
//How toaccess the assocaaton value in then swifrt

//associated values are used to get the value and calculate from the eunum variable
/*
 
 
 enum can have the square enum have pass the value and retun the square a
 enum can have the wedith and lenght assicaoted value then we can have the length and weidth value so we can have the area calculated in the swift and rteturn the value'
 
 
 func areat() ->Double {
 
 switch self {
 
 case let .Square(side) :
 return side *side
 
 case let .Rectangle(weidth:W hEIFHT:H)
 return w*h
 }
 
 }
 
*/



enum ConnectionState66 {
    case Unknown
    case Disconnected
    case Connecting(Int, Double)
    case Connected(Int)
    
    init () {
        self = .Unknown
    }
}

var connectionState66 = ConnectionState66() // .Unknown



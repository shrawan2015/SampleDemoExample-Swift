//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


enum RideType {
    case Family
    case Kids
    case Thrill
    case Scary
    case Relaxing
    case Water
}

struct Ride {
    let name: String
    let types: Set<RideType>
    let waitTime: Double
}




///map filter and reduce


var arrayName = [ "sks","dfdfd","fgfgg","fgfggf"]


let newarrray = arrayName.map{ return $0+"hii"}

print(newarrray)



func newFunction(array:String)  -> Bool {
    return array == "sks"
}



let nextNewArray = arrayName.filter{  $0 == "sks" }

let nextNewArray2 = arrayName.filter(newFunction)




//let <#name#> = <#value#>



//
//func ridesWithWaitTimeUnder(waitTime: Double, fromRides rides: [Ride]) -> [Ride] {
//    return rides.filter { $0.waitTime < waitTime }
//}




print(nextNewArray)





func isEven<T>(number: T) -> Bool {
    return number as! Int % 2 == 0
}

var evens = Array(1...10).filter(isEven)


print(evens)









//
//func waitTimeIsShort(ride: Ride) -> Bool {
//    return ride.waitTime < 15.0
//}


//var shortWaitTimeRides = parkRides.filter(waitTimeIsShort)
//print(shortWaitTimeRides)
//
//
//shortWaitTimeRides = parkRides.filter { $0.waitTime < 15.0 }
//print(shortWaitTimeRides)





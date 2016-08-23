//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

str=str+"!"

print(str)

var stringName="shrawan"

print(stringName)


var message=23
var stringnmae:NSString!

if message>20 {
  stringnmae="dfdfkjdk"
}

print(stringnmae)



//switch


var switchCondition=555

switch switchCondition
{
case 400:
    print("this is 400")
    
case 500:
    print("this is 50")
    
case 555,600...700:
    print("\(switchCondition) this is range")
    
default:
    print("\(switchCondition)this is defaule") //value binding
    
}

//pattern matching in tuple

let firsValue=22
//let secValue=33
let secValue=444

let tuple=(firsValue,secValue)

switch(tuple){
    
case(22,33):
    print("\(tuple.0)   \(tuple.1)")
    
default:
    print("this is default value")
    
}


//Pattern matching in the if-else case

let varNum=23

if case 0...45 = varNum {
    print("this is the variable Number \(varNum) ")
    
}

let varNum2=66

if case 24...90 = varNum2 where varNum2>45 {
    
    print("this is the if case with where clause")

}


let point=(x:2222,y:444)


switch point{
    
 //Alternatively, use the underscore character (_), also known as the wildcard pattern, to match any possible value.
    
    
case let q1 where (point.x<0 && (point.y>0)):
    print("it works \(q1) first quadrant")
    
case let q1 where (point.x>0 && (point.y>0)):
    print("it works \(q1) second quadrant")
 
case let q1 where (point.x<0 && (point.y<0)):
    print("it works \(q1) third quadrant")
 
case let q1 where (point.x>0 && (point.y<0)):
    print("it works \(q1) fourth quadrant")
 
    
case(_,0):
    print("this is the x axis")
    
    
case( 0,_):
    print("this is y case")
    
default:
    print("this won't work")
    
}


//for-loopp



for i in 1...10 {
print(i)
}

var myfirt:Int=0

for _ in 1...10 {
//print(_)
myfirt += 1
    print(myfirt)
}

//Unicode
let unicode="\u{0061}"

print(unicode)

//“l​e​t​ ​a​A​c​u​t​e​ ​=​ ​"​\​u​{​0​0​6​1​}​\​u​{​0​3​0​1​}​"




//TO BE DONE IN TO FIND THE RANGE IN STTRING

//Indices and Ranges

let stringValue:NSString="this is the playground"

//print(stringValue[0]) //since string cannot be subscript

let startValue=stringValue.characterAtIndex(2)


//let start = stringValue.stae

//let end=advance(stringValue)







//OPTIONAL it is used to create the instance that can have nil value



var newStringWithOptional:NSString? //?
newStringWithOptional="this is the string"
print(newStringWithOptional)

var errorCode:Int?

errorCode=4555

//Optional Binding //multiple binding and where clause to check the if condition
if let noNeedofUnwrap = newStringWithOptional,errorCode=errorCode where errorCode>400 {
    
    print(noNeedofUnwrap)

}


//implicit Unwraped optional ..no need of unwrap the instance 

var iUnwrapOptional:NSString!

//CRASH happen IF WE DECLARE implicit unwrap and instance is nil. so there should be some value before using it .
//comment below example and see the magic


//Runtime error if we use the value without initilize the value


iUnwrapOptional="unwrap optiuonal"

print(iUnwrapOptional)




//nil coelasing operator ?? operator

var deafaultValue:NSString?
//deafaultValue="dfdf" ///deafaultValue should be optional to use the nil colesting property
let value = deafaultValue ?? "this is the default value " //if it neel than it will access the value

print(deafaultValue)



///ARRAY IN SWIFT


var arrayName=["this is first arrayValue"]
arrayName.append("this is second value")

arrayName.append("third value")
arrayName.append("forthname")

arrayName.append("fifth")

arrayName[0]="new first value"

arrayName.removeAtIndex(1)

arrayName.insert("Insert new Elemnt ", atIndex: 2)

print(arrayName[0...3])

//Initize the array ***

var  secondArray=[NSString]()


secondArray.append("this is first elemetn")
print(secondArray)


let equal = (arrayName == secondArray)


print(equal)


//let keyword for immutable array

var newArray = [NSString]()


newArray.append("this is the first ")
newArray.append("this is second")
newArray.append("this is third")
newArray.append("this is fourth")
newArray.append("this is f")
newArray.append("this is s")

let count1=newArray.count


for i in (0...count1-1).reverse() {
    print(i)
    print("\(newArray[i])")
}


for x in (0...count1).reverse() {
    print(newArray)
}

//stride in swift to reverse with non integer

//for x in stride(from: 0, through: -8, by: -2) {
//    print(x) // 0, -2, -4, -6, -8
//}



//DICTIONARY:


var dictionary2=[NSString:NSString]()

var newDict=[1:"sks",2:"pqr"]

print(newDict[1]!)


for(key,value) in newDict {
    
    
    print("  \(key), \(value)")

    
}



newDict[1]


//Varaidic For Loop 



func varidicFun(names:NSString ...)
{
    for name in  names{
        print(name)
    }
    
}

varidicFun("sss","sssssss")


//guard statemetn to early exist of the function in swift 

////ENUM IN THE SWIFT

enum UITextField2 {
    case left
    case Right
    case up
    case down
}


var align=UITextField2.left

print(align)


var alighment2:UITextField2 = .Right

print(alighment2)


switch(alighment2){
    
    
case .left:
    print("this is the first")
    
case .Right :
    print("this is the right side")
   
default:
    print("this is the default")
}


//enum can place the method in the enum and change the value by mutatuing 
//by accessing the value in

enum LightBulb {
    case    on
    case    off
    

}

var value2=LightBulb.on
print(value2)



enum exchangePrice {
    case low
    case high

    mutating func exchangevalue() {
        
        switch self {
        case .low:
            self = .high
        case  .high:
            self = .low
        }
        
        
    }
}
//enum and assiciated value to have difference case in enum such as rectalagleSqurare abd rectangleVlaue







//IN OUT PARAMETER IN THE FUNCTIONS:
/*
“v​a​r​ ​e​r​r​o​r​ ​=​ ​"​T​h​e​ ​r​e​q​u​e​s​t​ ​f​a​i​l​e​d​:​"
f​u​n​c​ ​a​p​p​e​n​d​E​r​r​o​r​C​o​d​e​(​c​o​d​e​:​ ​I​n​t​,​ ​i​n​o​u​t​ ​t​o​E​r​r​o​r​S​t​r​i​n​g​ ​e​r​r​o​r​S​t​r​i​n​g​:​ ​S​t​r​i​n​g​)​ ​{
    ​ ​ ​ ​i​f​ ​c​o​d​e​ ​=​=​ ​4​0​0​ ​{
        ​ ​ ​ ​ ​ ​ ​ ​e​r​r​o​r​S​t​r​i​n​g​ ​+​=​ ​"​ ​b​a​d​ ​r​e​q​u​e​s​t​.​"
        ​ ​ ​ ​}
}
a​p​p​e​n​d​E​r​r​o​r​C​o​d​e​(​4​0​0​,​ ​t​o​E​r​r​o​r​S​t​r​i​n​g​:​ ​&​e​r​r​o​r​)
e​r​r​o​r​”

Excerpt From: Mathias, Matthew. “Swift Programming: The Big Nerd Ranch Guide.” iBooks.

*/


var error="this is the error"


func appenedError(code:Int,inout toErrorString errorString:String){
    
    if code == 400 {
        print( "this is the code")
    }
    errorString=error + " this is in out functiuon so it will change the value "
    
}

appenedError(400, toErrorString: &error)


error
print(error)


////OPTIONAL IN SWIFT


var  varaible:NSString?


print(varaible)























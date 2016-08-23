//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"





Alamofire.request(.GET, "http://httpbin.org/get")
    .responseJSON {(request, response, JSON, error) in
        println(JSON)
}



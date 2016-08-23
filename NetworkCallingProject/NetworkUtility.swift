//
//  NetworkUtility.swift
//  
//
//  Created by ShrawanKumar Sharma on 19/07/16.
//
//


import Almofire
import Foundation


protocol fetchData {
    

    Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
    .responseJSON { response in
    print(response.request)  // original URL request
    print(response.response) // URL response
    print(response.data)     // server data
    print(response.result)   // result of response serialization
    
    if let JSON = response.result.value {
    print("JSON: \(JSON)")
    }
    }
    
    
    
}
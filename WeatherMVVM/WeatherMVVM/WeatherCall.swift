//
//  WeatherCall.swift
//  WeatherMVVM
//
//  Created by ShrawanKumar Sharma on 25/08/16.
//  Copyright © 2016 ShrawanKumarSharma. All rights reserved.
//

import Foundation
import Alamofire



class WeatherCalling {
    
    
    
    
    func NetworkCall() {
        
        Alamofire.request(.GET, "http://api.openweathermap.org/data/2.5/weather?lat=28&lon=77&APPID=4244a5f4a8cae8aa87ea4555e802517b")
    .responseJSON { response in
    switch response.result {
    case .Success:
          do {
            let anyObj = try NSJSONSerialization.JSONObjectWithData(response.data!, options: []) as! [String:AnyObject]
            print(anyObj)
            let x = anyObj["wind"]
            print(x)
        } catch {
            print("json error: \(error)")
        }
       
        
    print("Validation Successful")
    case .Failure(let error):
    print(error)
    }
        
    }
    
    
    
    
    }
    
    
    
}
//
//  WeatherDetailVM.swift
//  WeatherMVVM
//
//  Created by ShrawanKumar Sharma on 25/08/16.
//  Copyright © 2016 ShrawanKumarSharma. All rights reserved.
//

import Foundation


class WeatherDetailVM {
    
    var weather :WeatherModel?
    
    init(weather:WeatherModel? = nil) {
        self.weather = weather
    }
    
    
    var getCurrentTemp:Float {
        return weather!.temerature_average!
    }
    
    var  getDescription:String {
        return weather!.discription!
    }
    
    var getImageIndex : Int {
        if( weather!.temerature_average < 20) {
            return 0
        }
        return 1
    }
    
    
  
}
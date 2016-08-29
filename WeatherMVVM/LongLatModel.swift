//
//  LongLatModel.swift
//  WeatherMVVM
//
//  Created by ShrawanKumar Sharma on 25/08/16.
//  Copyright © 2016 ShrawanKumarSharma. All rights reserved.
//

import Foundation



class WeatherLocation  {
    
    var longitude : Float?
    var latitude : Float?
    
    init(longitude:Float,latitude:Float){
        self.latitude = latitude
        self.longitude = longitude
    }
    
}
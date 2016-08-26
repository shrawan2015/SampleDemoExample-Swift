//
//  WeatherReportLocationModel.swift
//  WeatherMVVM
//
//  Created by ShrawanKumar Sharma on 25/08/16.
//  Copyright © 2016 ShrawanKumarSharma. All rights reserved.
//

import Foundation

/*
 
 "weather":[{"id":804,"main":"clouds","description":"overcast clouds","icon":"04n"}],
 "main":{"temp":289.5,"humidity":89,"pressure":1013,"temp_min":287.04,"temp_max":292.04},
 "wind":{"speed":7.31,"deg":187.002},
 "rain":{"3h":0},
 "clouds":{"all":92},
 "dt":1369824698,
 "id":1851632,
 "name":"Shuzenji",
 "cod":200}
 
 */

class WeatherModel {
    var temerature_average : Float?
    var temperature_max : Float?
    var temperature_min :Float?
    var humidity : Float?
    var wind : Float?
    var discription :String?
    
    init(temp_average:Float,temp_max:Float,temp_min:Float,humidity:Float,wind:Float,discrip:String) {
        self.temperature_max = temp_max
        self.temperature_min = temp_min
        self.temerature_average = temp_average
        self.humidity = humidity
        self.wind = wind
        self.discription = discrip
    }
   
}



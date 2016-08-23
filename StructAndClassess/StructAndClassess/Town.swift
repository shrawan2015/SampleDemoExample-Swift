//
//  Town.swift
//  StructAndClassess
//
//  Created by ShrawanKumar Sharma on 12/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import Foundation


struct Town {
    
    var population:NSString?="string"
    var noOfPopulation:NSString?="sffdfd"  //Mutable Properties in the struct
    
    
    func populationCount() {
        print("the population of country \(population!) and count is \(noOfPopulation!)")
    
    }
    
    mutating func popilationIncrease(name:NSString)
    {
        population = (population! as String) + (name as String)
    }
    
    
    
}
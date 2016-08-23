//
//  main.swift
//  StructAndClassess
//
//  Created by ShrawanKumar Sharma on 12/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import Foundation

print("Hello, World!")


//base class is called
var monster=Monster()
monster.describeMonster()




var town=Town()
print("\(town.population)")
print("\(town.noOfPopulation)")

town.populationCount()
town.popilationIncrease(" new population")

town.populationCount()


var monster2 = Monster()
monster2.town=town
monster2.describeMonster()


//class has inheritance 




//
//  Enumeration.swift
//  
//
//  Created by ShrawanKumar Sharma on 15/07/16.
//
//

import Foundation

//An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.



enum TabBarController {
    
    case FirstTab
    case SecondTab
    case ThirdTab
    case FourthTab
    
    
}


var tabVar=TabBarController
let x=tabVar.FirstTab

print(x)


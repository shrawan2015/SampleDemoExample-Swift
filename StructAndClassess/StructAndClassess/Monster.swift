//
//  Monster.swift
//  StructAndClassess
//
//  Created by ShrawanKumar Sharma on 12/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import Foundation

    class Monster
{
        
        var town:Town?
        var name="Monster"
        
        func describeMonster() {
            if town != nil {
                print("the town of the moster is \(town!.populationCount()) and name of the monster is \(name)")
            }
            else {
                print("he have no town ")
            }
            
        }
}

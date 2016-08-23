//
//  Operator.swift
//  ClassExample
//
//  Created by ShrawanKumar Sharma on 13/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import Foundation

class Operator: NSObject {
    
    var str: NSString
    var str2 : NSString
    
    override init() {
        self.str="first string "
        self.str2="second strign"
        
    }
    
    init(name:NSString,lastname:NSString)
    {
        str=name
        str2=lastname
        
    }
    convenience init(name:NSString)
    {
        self.init()
        self.str=name

        
    }
    
}



class Mathematics: Operator {
    
//    override init()
//    {
//    
//    }
    
    override init() {
        
        super.init()

    }
    
}


/*
 
 */
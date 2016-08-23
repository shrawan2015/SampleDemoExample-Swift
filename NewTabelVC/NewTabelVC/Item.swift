//
//  Item.swift
//  NewTabelVC
//
//  Created by ShrawanKumar Sharma on 11/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import Foundation


class Item:NSObject
{
    var firstName:NSString
    var secondName:NSString
    var price:NSString
    var incomeTax:Int
    
    init(firstname:NSString,secondName:NSString,price:NSString,incomeTax:Int) {
        
        
        //SELF FOR THE PROPERTY
        self.firstName=firstname
        self.secondName=secondName
        self.incomeTax=incomeTax
        self.price=price
        
        
        super.init()
    }
}
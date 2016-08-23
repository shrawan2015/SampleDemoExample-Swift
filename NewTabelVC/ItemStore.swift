//
//  ItemStore.swift
//  NewTabelVC
//
//  Created by ShrawanKumar Sharma on 11/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import UIKit


class ItemStore {
    
    var allItem=[Item]()
    
    
    func createItem() -> Item{
        
        let newItem=Item(firstname: "sks", secondName: "ssss", price: "sdff", incomeTax: 23)
        return newItem
        
    }
    
}
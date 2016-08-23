//
//  ModelClass.swift
//  ClassExample
//
//  Created by ShrawanKumar Sharma on 13/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import Foundation

class ModelClass:NSObject {
    var model1:NSString
    
    override init() {
        model1="fgfgfg"
        super.init()
    }
    
    init (fromString:NSString) {
        self.model1=fromString
        print(fromString)
    }
}

class Model2: ModelClass {
    override init() {
        print("fdfg")
        super.init()

    }
}

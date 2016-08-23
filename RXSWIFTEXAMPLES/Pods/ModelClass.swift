//
//  ModelClass.swift
//  Pods
//
//  Created by ShrawanKumar Sharma on 25/07/16.
//
//

import Foundation


class ModelClass {
    let title: Variable<String>
    let rating: Variable<Float>
    
    init(){
        title  = Variable("")
        rating = Variable(Float(5.0))
    }
    
    init(title: Variable<String>, rating: Variable<Float>){
        self.title = title
        self.rating = rating
    }
}
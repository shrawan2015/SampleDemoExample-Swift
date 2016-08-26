//
//  CircleVM.swift
//  ReactiveSwift-Revised
//
//  Created by ShrawanKumar Sharma on 24/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa



class CircleVM {
    
    var centerVariable = Variable<CGPoint?>(CGPointZero) // Create one variable that will be changed and observed
    var backgroundColorObservable: Observable<UIColor>! // Create observable that will change backgroundColor based on center
    
    init() {
        setup()
    }
    
    func setup() {
        
        
        backgroundColorObservable  = centerVariable.asObservable()
            .map {
                center in
                guard let center = center else { return UIColor.blackColor() }
                
                let red: CGFloat = ((center.x + center.y) % 255.0) / 255.0 // We just manipulate red, but you can do w/e
                let green: CGFloat = 0.0
                let blue: CGFloat = 0.0
                
                return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
                
                
        }
        
    
    }
}

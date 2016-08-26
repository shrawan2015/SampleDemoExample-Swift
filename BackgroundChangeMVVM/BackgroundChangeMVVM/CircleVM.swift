
//
//  CircleVM.swift
//  BackgroundChangeMVVM
//
//  Created by ShrawanKumar Sharma on 26/08/16.
//  Copyright © 2016 ShrawanKumarSharma. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class CircleVM {
    
    
    var backGroundObservable : Observable<UIColor>!
    var centerVariable:Variable<CGPoint?> = Variable(CGPointZero)

    
    init() {
    
        setup()
     
    }
    
    func setup() {
        
        backGroundObservable = centerVariable.asObservable()
            .map { center in
              //  guard let center = center else { return UIColor(UIColor.blackColor())() }
                
                let red: CGFloat = ((center!.x + center!.y) % 255.0) / 255.0 // We just manipulate red, ////but //you can do w/e
                let green: CGFloat = 0.0
                let blue: CGFloat = 0.0
                
                return  UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
    }
    
    }
    
    


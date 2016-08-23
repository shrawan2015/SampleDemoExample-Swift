//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by ShrawanKumar Sharma on 07/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import Foundation


class TipCalculatorModel {
    var total:Double
    var taxPct:Double
    var  subtotal:Double {
    get {
    return total/taxPct
    }
    }
    init(total:Double,taxPact:Double){
        self.total=total
        self.taxPct=taxPact
    }
    
    
    func  functionReturnVlaue(tipPct: Double) -> Double {
        return 23;
    }


}
//
//  NetorkUtility.swift
//  ClosurePracticeModelDetail
//
//  Created by ShrawanKumar Sharma on 20/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import Foundation




var completaionClosure = { ( URLs : NSString ) -> Void in

    print("this is the class")
}


class NetorkUtility {

public static func networkCall(NAME:NSString, closure: (url:NSString) -> () ) {
    
    closure(url: "success")
    
}

}




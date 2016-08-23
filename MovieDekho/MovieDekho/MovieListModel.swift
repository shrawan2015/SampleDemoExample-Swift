//
//  MovieListModel.swift
//  MovieDekho
//
//  Created by ShrawanKumar Sharma on 12/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import Foundation


class MovieListModel: NSObject {
    

    var  posterPath:NSString
    var  adult:Bool
    var  overView:NSString
    var  releaseData:NSString
    var  idNumber:Int
    var  voteCount:NSString

    init(posterPath:NSString,adult:Bool,overView:NSString,releaseDate:NSString,idNumber:Int,voteCount:NSString) {
        
        self.posterPath=posterPath
        self.adult=adult
        self.idNumber=idNumber
        self.overView=overView
        self.voteCount=voteCount
        self.releaseData=releaseDate
        
        
    }
    
    
    
}




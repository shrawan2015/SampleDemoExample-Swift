//
//  MovieModel.swift
//  MovieList-RXSWIFT
//
//  Created by ShrawanKumar Sharma on 22/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import Foundation

class MovieModel {
    var movieName : String
    var moviecharacter:String
    var dateRelease: String
    var characters:String
    
    init(movieName:String,moviecharacter:String,dateRelease:String,characters:String) {
        self.movieName = movieName
        self.moviecharacter = moviecharacter
        self.dateRelease = dateRelease
        self.characters = characters
    }
}
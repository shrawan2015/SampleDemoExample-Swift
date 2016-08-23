//
//  MovieVM.swift
//  MovieList-RXSWIFT
//
//  Created by ShrawanKumar Sharma on 22/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa


class MovieVM {
    
    
    let didposebag  = DisposeBag()
    
    
    var movieModel : MovieModel
    
    var getMovieTitle:BehaviorSubject<String>
    var getMoieDate:BehaviorSubject<String>
    
    init(movieModel : MovieModel) {
        self.movieModel = movieModel
        
        getMovieTitle = BehaviorSubject<String>(value : movieModel.movieName)
        getMovieTitle.subscribeNext{ movie in
            
            
            //Update the model in VM BY THE SUBSCRIBE
            movieModel.movieName = movie
            
            
            print("this is the movie")
        }.addDisposableTo(self.didposebag)
        
        getMoieDate = BehaviorSubject<String>(value : movieModel.dateRelease)
        getMoieDate.subscribeNext{
            date in
            
            
            movieModel.dateRelease = date
            
            
        }.addDisposableTo(didposebag)

    }
    
    
    
}
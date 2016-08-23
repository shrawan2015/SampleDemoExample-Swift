//
//  ViewController.swift
//  RXSWIFTEXAMPLES
//
//  Created by ShrawanKumar Sharma on 25/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import UIKit

import RxSwift 

class ViewController: UIViewController {

    @IBOutlet weak var searchBar2: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
//        
//        let searchResults = searchBar2.bnd_tex
//            .throttle(0.3, scheduler: MainScheduler.instance)
//            .distinctUntilChanged()
//            .flatMapLatest { query -> Observable<[Repository]> in
//                if query.isEmpty {
//                    return Observable.just([])
//                }
//                
//                return searchGitHub(query)
//                    .catchErrorJustReturn([])
//            }
//            .observeOn(MainScheduler.instance)
        
        func myJust<E>(element: E) -> Observable<E> {
            return Observable.create { observer in
                observer.on(.Next(element))
                observer.on(.Completed)
                return NopDisposable.instance
            }
        }
        
        myJust(0)
            .subscribeNext { n in
                print(n)
        }
        
        
        

//        
//        func myJust<E>(element: E) -> Observable<E> {
//            return Observable.create { observer in
//                observer.on(.Next(element))
//                observer.on(.Completed)
//                return NopDisposable.instance
//            }
//        }
        
        myJust(0)
            .subscribeNext { n in
                print(n)
        }
        
        
        
        
        [1,3,4,5].toObservable()
            .subscribe(onNext: {
                
             (intVALUE) -> Void in
              print(intVALUE)
            })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


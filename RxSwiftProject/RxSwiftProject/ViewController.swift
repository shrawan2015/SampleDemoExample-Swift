//
//  ViewController.swift
//  RxSwiftProject
//
//  Created by ShrawanKumar Sharma on 25/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import UIKit

import RxSwift




class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bbb /*: Observable<Int>*/ = Variable(1)   // a = 1

//               
//        func myJust<E>(element: E) -> Observable<E> {
//            return Observable.create { observer in
//                observer.on(.Next(element))
//                observer.on(.Completed)
//                return NopDisposable.instance
//            }
//        }
//        
//        myJust(0)
//            .subscribeNext { n in
//                print(n)
//        }
//        
//        
        

        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


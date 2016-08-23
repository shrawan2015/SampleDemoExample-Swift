//
//  ViewController.swift
//  RXsWIFTEXamplENEW
//
//  Created by ShrawanKumar Sharma on 11/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa


class ViewController: UIViewController {

    @IBOutlet weak var secondTextLabel: UILabel!
    @IBOutlet weak var labelOutlet: UILabel!
    
    
    @IBOutlet weak var buttonOutlet: UIButton!
    @IBOutlet weak var tableviewOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let source  = Observable<Int>.create{   observer2 in
            
            for  i  in 0...5 {
               observer2.on(.Next(i))
            }
            return NopDisposable.instance
        }
        
        
        
        
        secondTextLabel.rx_text
            .map { "Launching \($0)..." }
            .bindTo(labelOutlet.rx_text)
       
        //Creating our own Observable:
        Observable<String>.create {
            $0.onNext("Howdy! 🐴")
            $0.onCompleted()
            
            return NopDisposable.instance
        }
        
        
        
        
        
        
        
//        // Do any additional setup after loading the view, typically from a nib.
//  
//        let x = APICalling()
//        x.subscribe()
//        
//        x.subscribe()
//
//        x.subscribe()
//
//        
//        
//        myJust(0)
//            .subscribeNext { n in
//                print(n)
//        }
//        myJust(2)
//            .subscribeNext { n in
//                print(n)
//        }
//
//        
       
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func myJust<E>(element: E) -> Observable<E> {
        return Observable.create { observer in
            observer.on(.Next(element))
            observer.on(.Completed)
            return NopDisposable.instance
        }
        
        
        
        
        func creatApi<E>(element:E) -> Observable<E>
        {
            return Observable.create{
              x in
                x.onNext(element)
                return NopDisposable.instance
            }
        }
    }
    

    
    
    
    
}


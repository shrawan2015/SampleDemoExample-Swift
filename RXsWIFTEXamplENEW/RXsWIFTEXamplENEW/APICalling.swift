//
//  APICalling.swift
//  RXsWIFTEXamplENEW
//
//  Created by ShrawanKumar Sharma on 11/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import Foundation

import RxSwift
import RxCocoa


class APICalling {

    
    
    func  justapi<E>(element:E) -> Observable<E> {
        return Observable.create { observer in
            observer.on(.Next(element))
            return NopDisposable.instance

        }
    }
    
    
    func CallAPI()  {
          self.justapi(1)
            .subscribeNext { n in
                print(n)
        }
    }
    
    
    func CallingAPI<E>(sequence:[E]) -> Observable<E> {
        
        return Observable.create {
            obverve in
            for element in sequence  {
            obverve.on(.Next(element))
            }
            obverve.onCompleted()
            return NopDisposable.instance
        }
        
        
    }
    
    
    
    
    func subscribe() {
        
       let x = self.CallingAPI(["first","seconf"])
        x.subscribeNext{ no in
        print(no)
        }
    }
    
    
    

    
}
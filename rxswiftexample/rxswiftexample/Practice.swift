//
//  Practice.swift
//  rxswiftexample
//
//  Created by ShrawanKumar Sharma on 26/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import Foundation
/*
 
 //        func myFrom<E>(sequence: [E]) -> Observable<E> {
 //            return Observable.create { observer in
 //                for element in sequence {
 //                    observer.on(.Next(element))
 //                }
 //
 //                observer.on(.Completed)
 //                return NopDisposable.instance
 //            }
 //        }
 //
 //        let stringCounter = myFrom(["first", "second"])
 //
 //
 ////        searchBar.rx_text
 ////
 ////
 //
 //        let loginValidation = uitextField
 //            .rx_text
 //            .map({!$0.isEmpty})
 //            .shareReplay(1)
 //
 //
 //
 //
 //        stringCounter
 //            .subscribeNext { n in
 //                print(n)
 //        }
 //
 //        print("Started ----")
 //
 //
 //
 //        let variable = Variable(0)
 //
 //        print("Before first subscription ---")
 //
 //        _ = variable.asObservable()
 //            .subscribe(onNext: { n in
 //                print("First \(n)")
 //                }, onCompleted: {
 //                    print("Completed 1")
 //            })
 //
 //        print("Before send 1")
 //
 //        variable.value = 1
 //
 //
 //
 //
 //
 //
 //        let variable2 = Variable(4)
 //
 //
 //        variable2.asObservable()
 //            .subscribe(onNext : {n in
 //
 //            print("this is the next event")
 //            })
 //        
 //        variable2.value = 4
 
 
 
 
 
 userNameText.rx_text
 .map({ n in
 print("this is the text")})
 .subscribeNext{ (str) -> Void  in
 print("str")
 
 
 }
 
 
 var shownCities = [String]() // Data source for UITableView
 let allCities = ["New York", "London", "Oslo", "Warsaw", "Berlin", "Praga"] // Our mocked API data source
 let disposeBag = DisposeBag() // Bag of disposables to release them when view is being deallocated (protect against retain cycle)
 
 
 searchBar
 .rx_text // Observable property thanks to RxCocoa
 .subscribeNext { [unowned self] (query) in // Here we will be notified of every new value
 shownCities = allCities.filter { $0.hasPrefix(query) } // We now do our "API Request" to find cities.
 //self.tableView.reloadData() // And reload table view data.
 }
 .addDisposableTo(disposeBag)
 
 
 
 
 
 //func to create the observable
 
 func funName<Element2>(str:Element2) -> Observable<Element2>
 {
 return   Observable.create{
 observer in
 observer.on(.Next(str) )
 observer.on(.Completed)
 return NopDisposable.instance
 }
 
 }
 
 funName("sks")
 .subscribeNext{
 
 elemnt in
 print(elemnt)
 }
 
 
 
 
 
 
 //UIKIT OBSERVER
 
 
 userNameText.rx_text
 .subscribeNext{
 element in
 self.userNameDisplay.text  = "\(element)"
 
 }
 
 
 
 
 

 
 

 //

 */
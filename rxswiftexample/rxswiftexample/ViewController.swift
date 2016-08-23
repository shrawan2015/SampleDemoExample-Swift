//
//  ViewController.swift
//  rxswiftexample
//
//  Created by ShrawanKumar Sharma on 26/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import  RxSwift
import RxCocoa

import UIKit


typealias ValidResult = (stringName:NSString?,valid:Bool?)

class ViewController: UIViewController{ // ,UITableViewDataSource {

    @IBOutlet weak var passwordDisplay: UITextField!
    @IBOutlet weak var userNameDisplay: UITextField!
    
    

    @IBOutlet weak var uitextField: UITextField!
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!

    
    var allcities: [NSString] = []
    
    
    
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var validUserName: UITextField!
    
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//
//        userNameText.rx_text
//        .bindTo(userNameDisplay.rx_text)
//        
        
        
        
        
        var ButtonGO = goButton.rx_tap
        var username2 = self.validUserName.rx_text
        
        
//        func validUserName(name:NSString) -> Observable<ValidResult> {
//            
//            if(name.length == 0)
//            {
////                returnjust(nil,false)
//                return Observable.just("sdff",scheduler:true)
//            }
//            
//            return Observable.just(nil,scheduler: false)
//        }
        
        
        
        
        
//        tableViewOutlet.dataSource = self
//        
//        var disposeBag = DisposeBag()
//        
//        let showCities = ["New York", "London", "Oslo", "Warsaw", "Berlin", "Praga"] // Our mocked API data source
//
//      searchBar.rx_text
//        .subscribeNext{
//            
//                [unowned self] (query) in
//            
//            self.allcities =  showCities.filter { $0.characters.count > 0 }
//            
//            print(self.allcities.count)
//            
//            self.tableViewOutlet.reloadData()
//            
//            
//            
//            
//        }
//        .addDisposableTo(disposeBag)
        
        
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allcities.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cityPrototypeCell", forIndexPath: indexPath)
        cell.textLabel?.text = allcities[indexPath.row] as String
        
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}




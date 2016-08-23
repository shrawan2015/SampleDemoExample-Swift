//
//  ItemsViewController.swift
//  NewTabelVC
//
//  Created by ShrawanKumar Sharma on 11/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import UIKit


class ItemsViewController: UITableViewController {
    
    var itemStore:ItemStore!
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let statusBarHeight=UIApplication.sharedApplication().statusBarFrame.height
        
        let inset=UIEdgeInsetsMake(statusBarHeight, 0, 0, 0)
        tableView.contentInset=inset
        tableView.scrollIndicatorInsets=inset
        
    
    }
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let arrayName:[NSString]!=["fgkfjgk","gfgfgg"]
        
        
        //create the instance of the cell in the table view
       
        //if
        // let cell=UITableViewCell(style:.Value1, reuseIdentifier: "uitableviewcell")
        
//        let cell=tableView.dequeueReusableCellWithIdentifier("UITableViewCell", forIndexPath: indexPath)
        
        //let item=itemStore.allItem[indexPath.row]
        
        
        let cell=tableView.dequeueReusableCellWithIdentifier("ItemClass", forIndexPath:indexPath) as! ItemClass
        
        
        cell.firstName.text=arrayName[indexPath.row] as String
        cell.secondName.text=arrayName[indexPath.row] as String
        
        
//        cell.textLabel?.text=arrayName[indexPath.row] as String//item.firstName as String
//
//        cell.detailTextLabel?.text=arrayName[indexPath.row] as String//item.secondName as String
        return cell
        
    }
}




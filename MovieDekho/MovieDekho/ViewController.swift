//
//  ViewController.swift
//  MovieDekho
//
//  Created by ShrawanKumar Sharma on 12/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var movieTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.movieTable.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 0;
    }
//
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
   
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        //let cell:UITableViewCell=UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "mycell")
        
//        let cell:UITableViewCell=UITableViewCell(style: .Value1, reuseIdentifier: "cell")
//        cell.textLabel!.text="this is the row \(indexPath.row)"
//        cell.detailTextLabel!.text="kuch bhi"
//        
        
        
        var cell:UITableViewCell = self.movieTable.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
//        cell.textLabel?.text = self.items[indexPath.row]

        
        return cell
    }


}


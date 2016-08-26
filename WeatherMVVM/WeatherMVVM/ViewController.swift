//
//  ViewController.swift
//  WeatherMVVM
//
//  Created by ShrawanKumar Sharma on 24/08/16.
//  Copyright © 2016 ShrawanKumarSharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func weatherCall(sender: AnyObject) {
        
        let weatherCal =  WeatherCalling()
        weatherCal.NetworkCall()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


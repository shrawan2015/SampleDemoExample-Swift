//
//  WeatherDetailVC.swift
//  WeatherMVVM
//
//  Created by ShrawanKumar Sharma on 25/08/16.
//  Copyright © 2016 ShrawanKumarSharma. All rights reserved.
//

import UIKit

class WeatherDetailVC: UIViewController {

   private var weatherVM = WeatherDetailVM()
    
    
    @IBOutlet weak var temperatureOutlet: UILabel!
    @IBOutlet weak var cloudImage: UIImageView!
    @IBOutlet weak var locationName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.temperatureOutlet.text = NSString(format: "%.2f", weatherVM.getCurrentTemp ) as String
        self.locationName.text = weatherVM.getDescription
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

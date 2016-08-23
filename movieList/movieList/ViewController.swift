//
//  ViewController.swift
//  movieList
//
//  Created by ShrawanKumar Sharma on 08/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "http://api.shephertz.com" // Your Normal URL String
        let url = NSURL(string: urlString)// Creating URL
        let request = NSURLRequest(URL: url!) // Creating Http Request
        let response: AutoreleasingUnsafeMutablePointer&lt;NSURLResponse?&gt;=nil
        // Sending Synchronous request using NSURLConnection
        do {
            let responseData = try NSURLConnection.sendSynchronousRequest(request, returningResponse: response) //Converting data to String
            let responseStr:NSString = NSString(data:responseData, encoding:NSUTF8StringEncoding)!
        } catch (let e) {
            print(e)
            // You can handle error response here
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func connection(connection: NSURLConnection!, didReceiveData data: NSData!){
        dataVal.appendData(data)
    }
    
    
    func connectionDidFinishLoading(connection: NSURLConnection!)
    {
        
        do {
            if let jsonResult = try NSJSONSerialization.JSONObjectWithData(dataVal, options: []) as? NSDictionary {
                print(jsonResult)
            }
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        
    }


}


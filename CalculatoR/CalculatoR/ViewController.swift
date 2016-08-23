//
//  ViewController.swift
//  CalculatoR
//
//  Created by ShrawanKumar Sharma on 05/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var middleOfTyping = false
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    var brainCalc:BrainCalculation = BrainCalculation()
    
    
    @IBAction func calculateValye(sender: UIButton) {
        
        let calculateValue = sender.currentTitle
        if(calculateValue == "-")
        {
           // brainCalc.setOperation(displayValue))

           //displayValue=M_PI
        }
        if(calculateValue == "+")
        {
            brainCalc.performOperation("+")
        //displayValue=sqrt(displayValue)
        }
        
        
    }
    
    
    func returnValue(value:Int) {

        print("this is the return value ")
    
    }
    
    var displayValue:Double {
        get {
            return Double(labelOutlet.text!)!
        }
        set {
            labelOutlet.text=String(newValue)
        }
    }
    
    
    @IBAction func buttonAction(sender: UIButton) {
        let digital = sender.currentTitle!

        if(middleOfTyping){
           
             middleOfTyping=true
            print("this is \(digital) the 5 Button")
            let currentDisplay=labelOutlet!.text!
             labelOutlet!.text=currentDisplay + digital
        }
        else
        {
            labelOutlet!.text=digital
        }
        middleOfTyping=true
        }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}


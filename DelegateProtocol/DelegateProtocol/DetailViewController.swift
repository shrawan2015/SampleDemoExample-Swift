//
//  DetailViewController.swift
//  DelegateProtocol
//
//  Created by ShrawanKumar Sharma on 07/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import UIKit

protocol PassingTheData :class{
    func didFinishTheData(sender:DetailViewController)
}

class DetailViewController: UIViewController {


    weak var delegate:PassingTheData?
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    @IBAction func delegateButton(sender: AnyObject) {
        
        delegate?.didFinishTheData(self)
        self.navigationController!.popViewControllerAnimated(true)
        
    }
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


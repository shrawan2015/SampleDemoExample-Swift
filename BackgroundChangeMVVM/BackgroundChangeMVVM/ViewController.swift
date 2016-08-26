//
//  ViewController.swift
//  BackgroundChangeMVVM
//
//  Created by ShrawanKumar Sharma on 26/08/16.
//  Copyright © 2016 ShrawanKumarSharma. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import ChameleonFramework

class ViewController: UIViewController {

    var circleView:UIView!
    var circleViewModel : CircleVM!
    let disposeBag = DisposeBag()
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setup()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setup() {
        
        
        circleView = UIView(frame: CGRect(origin: view.center, size: CGSize(width: 100.0, height: 100.0)))
        circleView.layer.cornerRadius = circleView.frame.width / 2.0
        circleView.center = view.center
        circleView.backgroundColor = UIColor.greenColor()
        view.addSubview(circleView)
        
        // Add gesture recognizer
        let gestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(ViewController.circleMoved(_:)))
        circleView.addGestureRecognizer(gestureRecognizer)

        
        
        
        circleViewModel = CircleVM()
        // Bind the center point of the CircleView to the centerObservable
        circleView
            .rx_observe(CGPoint.self, "center")
            .bindTo(circleViewModel.centerVariable)
            .addDisposableTo(disposeBag)
        
        
        
        
        
        circleViewModel.backGroundObservable
            .subscribeNext { [weak self] (backgroundColor) in
                UIView.animateWithDuration(0.1) {
                    self?.circleView.backgroundColor = backgroundColor
                    // Try to get complementary color for given background color
                    let viewBackgroundColor = UIColor.init(complementaryFlatColorOf: backgroundColor, withAlpha: 1.0)
                    // If it is different that the color
                    if viewBackgroundColor != backgroundColor {
                        // Assign it as a background color of the view
                        // We only want different color to be able to see that circle in a view
                        self?.view.backgroundColor = viewBackgroundColor
                    }
                }
            }
            .addDisposableTo(disposeBag)
        
        
        
        
        
        
    }
    func circleMoved(recognizer: UIPanGestureRecognizer) {
        let location = recognizer.locationInView(view)
        UIView.animateWithDuration(0.1) {
            self.circleView.center = location
        }
    }

}


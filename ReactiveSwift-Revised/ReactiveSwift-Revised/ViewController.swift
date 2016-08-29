//
//  ViewController.swift
//  ReactiveSwift-Revised
//
//  Created by ShrawanKumar Sharma on 24/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    
    
    var circleView : UIView!
    var circleViewModel: CircleVM!
    var disposeBag = DisposeBag()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpView()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setUpView() {
        
        circleViewModel = CircleVM()
        circleView = UIView(frame: CGRect(origin:view.center,size: CGSize(width:100 ,height: 100)) )
        circleView.layer.cornerRadius = circleView.frame.width/2.0
        circleView.center = view.center
        circleView.backgroundColor = UIColor.redColor()
        view.addSubview(circleView)
        
        
        circleView
            .rx_observe(CGPoint.self, "center")
            .bindTo(circleViewModel.centerVariable)
            .addDisposableTo(disposeBag)
        
        
        
        let gesture = UIPanGestureRecognizer(target: self,action:#selector(ViewController.circleMoved(_:)))
        circleView.addGestureRecognizer(gesture)
        
        
        
        circleViewModel.backgroundColorObservable
            .subscribeNext { [weak self] (backgroundColor) in
                UIView.animateWithDuration(0.1) {
                    self?.circleView.backgroundColor = backgroundColor
                    // Try to get complementary color for given background color
                    var d = CGFloat(0)

                    var r = CGFloat(0)
                    var g = CGFloat(0)
                    var b = CGFloat(0)
                    var a = CGFloat(0)
                    
                    backgroundColor.getRed(&r, green: &g, blue: &b, alpha: &a)
                    let luminance = 1 - ((0.299 * r) + (0.587 * g) + (0.114 * b)) / 255
                    if luminance < 0.5 {
                        d = CGFloat(0) // bright colors - black font
                    } else {
                        d = CGFloat(255) // dark colors - white font
                    }
                    
                    let viewBackgroundColor = UIColor.init(red: d , green: d, blue: d, alpha: a)

                    //let viewBackgroundColor = UIColor.init(UIColor( red: d, green: d, blue: d, alpha: a))
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
    
    
    func circleMoved(recognizer:UIPanGestureRecognizer){
        let location = recognizer.locationInView(view)
        UIView.animateWithDuration(0.1){
           self.circleView.center = location
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


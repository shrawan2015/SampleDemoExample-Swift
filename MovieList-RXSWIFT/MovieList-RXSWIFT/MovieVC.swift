//
//  MovieVC.swift
//  MovieList-RXSWIFT
//
//  Created by ShrawanKumar Sharma on 22/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa

class MovieVC: UIViewController {
    
    
    
    let disposBag = DisposeBag()

    @IBOutlet weak var tableView: UITableView!
    let disposeBag = DisposeBag()
    var movieModel : MovieVM?
    var movieModel222: Variable<[MovieVM]> = Variable((UIApplication.sharedApplication().delegate as! AppDelegate).movieList)

    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
       

            tableView.estimatedRowHeight = 100
            
            
            movieModel222.asObservable().bindTo(tableView.rx_itemsWithCellIdentifier("ReactiveCellTableViewCell", cellType: ReactiveCellTableViewCell.self)) { (index, movieModel222: MovieVM, cell) in
                
                cell.viewModel = movieModel222
                
                }.addDisposableTo(disposeBag)
            
            

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

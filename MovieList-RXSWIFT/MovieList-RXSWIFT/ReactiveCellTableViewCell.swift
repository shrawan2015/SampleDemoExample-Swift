//
//  ReactiveCellTableViewCell.swift
//  MovieList-RXSWIFT
//
//  Created by ShrawanKumar Sharma on 22/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ReactiveCellTableViewCell: UITableViewCell {

    @IBOutlet weak var titleName: UILabel!
    @IBOutlet weak var dateOutlet: UILabel!
    
    let disposeBag = DisposeBag()
    
    
    var viewModel: MovieVM? {
        didSet {
            guard let cvm = viewModel else {
                return
            }
            
            
            
            cvm.getMovieTitle.bindTo(titleName.rx_text).addDisposableTo(self.disposeBag)
            cvm.getMoieDate.bindTo(dateOutlet.rx_text).addDisposableTo(self.disposeBag)
    
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

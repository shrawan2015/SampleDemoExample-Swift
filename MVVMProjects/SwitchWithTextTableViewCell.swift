//
//  SwitchWithTextTableViewCell.swift
//  MVVMProjects
//
//  Created by ShrawanKumar Sharma on 19/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import UIKit

typealias SwitchWithTextViewPresentable = protocol<TextPresentable, SwitchPresentable>


class SwitchWithTextTableViewCell: UITableViewCell {

    
    
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var switchToggle: UISwitch!
    
    private var delegate: SwitchWithTextViewPresentable?
    
    // configure with something that conforms to the composed protocol
    func configure(withPresenter presenter: SwitchWithTextViewPresentable) {
        delegate = presenter
        
        // configure the UI components
        label.text = presenter.text
        
        switchToggle.on = presenter.switchOn
        switchToggle.onTintColor = presenter.switchColor
    }
    
    @IBAction func onSwitchToggle(sender: UISwitch) {
        delegate?.onSwitchTogleOn(sender.on)
        
    }
    
    
}

//
//  BaseProtocol.swift
//  MVVMProjects
//
//  Created by ShrawanKumar Sharma on 19/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import Foundation
import UIKit


protocol TextPresentable {
    var text: String { get }
    var textColor: UIColor { get }
    var font: UIFont { get }
}

// your switch protocol
protocol SwitchPresentable {
    var switchOn: Bool { get }
    var switchColor: UIColor { get }
    func onSwitchTogleOn(on: Bool)
}


//Default feature of the switch colot
extension SwitchPresentable {
    var switchColor: UIColor { return .yellowColor() }
}

protocol ImagePresentable {
    var imageName: String { get }
}

protocol TextFieldPresentable {
    var placeholder: String { get }
    var text: String { get }
    
    func onTextFieldDidEndEditing(textField: UITextField)
}

extension UITableViewDataSource {
    // Returns the total # of rows in a table view.
    func totalRows(tableView: UITableView) -> Int {
        let totalSections = self.numberOfSectionsInTableView?(tableView) ?? 1
        var s = 0, t = 0
        while s < totalSections {
            t += self.tableView(tableView, numberOfRowsInSection: s)
            s += 1
        }
        return t
    }
}
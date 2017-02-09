//
//  ViewController.swift
//  Tests
//
//  Created by Martín Uribe on 2/2/17.
//  Copyright © 2017 mugby. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    @IBOutlet weak var pickerHeightConstraint: NSLayoutConstraint!
    var showPicker = false
    @IBOutlet weak var datePickerView: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerHeightConstraint.constant = 0
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            showPicker = !showPicker
            datePickerView.alpha = showPicker ? 1.0 : 0.0
            pickerHeightConstraint.constant = showPicker ? 224 : 0
            tableView.beginUpdates()
            tableView.endUpdates()
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 1 {
            return pickerHeightConstraint.constant
        }
        return UITableViewAutomaticDimension
    }
}


//
//  SettingsViewController.swift
//  finalios
//
//  Created by Locker,Todd on 11/28/16.
//  Copyright © 2016 Matthew Baker, Todd Locker. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var difficultySelector: UIPickerView!
    @IBOutlet weak var pickerLabel: UILabel!
    
    let pickerData = ["Easy","Medium","Hard"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

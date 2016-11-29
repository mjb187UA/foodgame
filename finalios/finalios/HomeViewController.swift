//
//  HomeViewController.swift
//  finalios
//
//  Created by Locker,Todd on 11/28/16.
//  Copyright © 2016 Matthew Baker, Todd Locker. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var difficultySelector: UIPickerView!
    @IBOutlet weak var pickerLabel: UILabel!
    
    let pickerData = ["Easy","Medium","Hard"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        difficultySelector.dataSource = self
        difficultySelector.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }

    func pickerView(_ ckerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerLabel.text = pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = pickerData[row]
        let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "Georgia", size: 15.0)!,NSForegroundColorAttributeName:UIColor.blue])
        return myTitle
    }
}

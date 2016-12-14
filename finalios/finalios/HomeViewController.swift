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
    @IBOutlet weak var playButton: UIButton!
    
    let pickerData = ["Easy","Medium","Hard"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let url1 = URL(fileURLWithPath: paths[0]).appendingPathComponent("questionList.plist")
        let url2 = URL(fileURLWithPath: paths[0]).appendingPathComponent("Answer1List.plist")
        let url3 = URL(fileURLWithPath: paths[0]).appendingPathComponent("Answer2List.plist")
        let url4 = URL(fileURLWithPath: paths[0]).appendingPathComponent("Answer3List.plist")
        let url5 = URL(fileURLWithPath: paths[0]).appendingPathComponent("Answer4List.plist")
        let url6 = URL(fileURLWithPath: paths[0]).appendingPathComponent("CorrectAnswerList.plist")
        
        //print(url2)
        
        let Qpath = Bundle.main.path(forResource: "questionList", ofType: "plist")
        let questionArray = NSArray(contentsOfFile: Qpath!)
        
        let A1path = Bundle.main.path(forResource: "Answer1List", ofType: "plist")
        let answer1Array = NSArray(contentsOfFile: A1path!)
        let A2path = Bundle.main.path(forResource: "Answer2List", ofType: "plist")
        let answer2Array = NSArray(contentsOfFile: A2path!)
        let A3path = Bundle.main.path(forResource: "Answer3List", ofType: "plist")
        let answer3Array = NSArray(contentsOfFile: A3path!)
        let A4path = Bundle.main.path(forResource: "Answer4List", ofType: "plist")
        let answer4Array = NSArray(contentsOfFile: A4path!)
        let CApath = Bundle.main.path(forResource: "CorrectAnswerList", ofType: "plist")
        let correctAnswerArray = NSArray(contentsOfFile: CApath!)
        
        
        
        
        
        /*let A1path = Bundle.main.path(forResource: "Answer1List", ofType: "plist")
         let answer1Array = NSArray(contentsOfFile: A1path!)
         let A2path = Bundle.main.path(forResource: "Answer2List", ofType: "plist")
         let answer2Array = NSArray(contentsOfFile: A2path!)
         let A3path = Bundle.main.path(forResource: "Answer3List", ofType: "plist")
         let answer3Array = NSArray(contentsOfFile: A3path!)
         let A4path = Bundle.main.path(forResource: "Answer4List", ofType: "plist")
         let answer4Array = NSArray(contentsOfFile: A4path!)
         let CApath = Bundle.main.path(forResource: "CorrectAnswerList", ofType: "plist")
         let correctAnswerArray = NSArray(contentsOfFile: CApath!)*/
        
        /*let array1 = NSMutableArray(contentsOf: url1)
         let array2= NSMutableArray(contentsOf: url4)!*/
        
        let array1:NSMutableArray = questionArray as! NSMutableArray
        let array2:NSMutableArray = answer1Array  as! NSMutableArray
        let array3:NSMutableArray = answer2Array as! NSMutableArray
        let array4:NSMutableArray = answer3Array as! NSMutableArray
        let array5:NSMutableArray = answer4Array as! NSMutableArray
        let array6:NSMutableArray = correctAnswerArray as! NSMutableArray
        
        //rint(url2)
        // Note: pick a unique label, probably based on bundle identifier
        // Note: the write will be processed asynchronously
        DispatchQueue(label:"matthew.finalios").async {
            if !((array1.write(to: url1, atomically: true))) {
                print("Error writing plist to \(url4)")
            }
            if !((array2.write(to: url2, atomically: true))) {
                print("Error writing plist to \(url4)")
            }
            if !((array3.write(to: url3, atomically: true))) {
                print("Error writing plist to \(url4)")
            }
            if !((array4.write(to: url4, atomically: true))) {
                print("Error writing plist to \(url4)")
            }
            if !((array5.write(to: url5, atomically: true))) {
                print("Error writing plist to \(url4)")
            }
            if !((array6.write(to: url6, atomically: true))) {
                print("Error writing plist to \(url4)")
            }
        }
        
        
        difficultySelector.dataSource = self
        difficultySelector.delegate = self
        playButton.setTitle("Play Easy", for: .normal)
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
        playButton.setTitle("Play "+pickerData[row], for: .normal)
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = pickerData[row]
        let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "Georgia", size: 15.0)!,NSForegroundColorAttributeName:UIColor.blue])
        return myTitle
    }
}

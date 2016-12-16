//
//  SettingsViewController.swift
//  finalios
//
//  Created by Locker,Todd on 11/28/16.
//  Copyright © 2016 Matthew Baker, Todd Locker. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var highscore: UILabel!
    @IBOutlet weak var userTF: UITextField!
    @IBOutlet weak var difficultySelector: UIPickerView!
    @IBOutlet weak var pickerLabel: UILabel!
    
    let pickerData = ["Easy","Medium","Hard"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let url1 = URL(fileURLWithPath: paths[0]).appendingPathComponent("user.plist")
        
        let array11 = (NSArray(contentsOf: url1) as! Array<Any>)
        
        let username = array11[0] as! String
        
        self.userTF.text = String(describing: array11[0])
        
        let thehighscore = array11[0] as! String
        
        self.highscore.text = "HighScore: " + String(describing: array11[1])
    }
    
  override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func changeHS(_ sender: Any) {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let url1 = URL(fileURLWithPath: paths[0]).appendingPathComponent("user.plist")
        
        let array11 = NSMutableArray(contentsOf: url1)
        
        array11?.replaceObject(at: 1, with: String(0))
        
        DispatchQueue(label:"matthew.finalios").async {
            if !((array11?.write(to: url1, atomically: true))!) {
                print("Error writing plist to \(url1)")
            }
        }
        
        self.highscore.text = "HighScore: 0"
    }
    @IBAction func changeUser(_ sender: Any) {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let url1 = URL(fileURLWithPath: paths[0]).appendingPathComponent("user.plist")
        
        let array11 = NSMutableArray(contentsOf: url1)
        
        array11?.replaceObject(at: 0, with: self.userTF.text!)
        
        DispatchQueue(label:"matthew.finalios").async {
            if !((array11?.write(to: url1, atomically: true))!) {
                print("Error writing plist to \(url1)")
            }
        }
    }
    
    
    @IBAction func clear(_ sender: AnyObject) {
        
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let url1 = URL(fileURLWithPath: paths[0]).appendingPathComponent("questionList.plist")
        let url2 = URL(fileURLWithPath: paths[0]).appendingPathComponent("Answer1List.plist")
        let url3 = URL(fileURLWithPath: paths[0]).appendingPathComponent("Answer2List.plist")
        let url4 = URL(fileURLWithPath: paths[0]).appendingPathComponent("Answer3List.plist")
        let url5 = URL(fileURLWithPath: paths[0]).appendingPathComponent("Answer4List.plist")
        let url6 = URL(fileURLWithPath: paths[0]).appendingPathComponent("CorrectAnswerList.plist")
        
        
        
        let array11 = NSMutableArray(contentsOf: url1)
        let array22 = NSMutableArray(contentsOf: url2)
        let array33 = NSMutableArray(contentsOf: url3)
        let array44 = NSMutableArray(contentsOf: url4)
        let array55 = NSMutableArray(contentsOf: url5)
        let array66 = NSMutableArray(contentsOf: url6)
        
        array11?.removeAllObjects()
        array22?.removeAllObjects()
        array33?.removeAllObjects()
        array44?.removeAllObjects()
        array55?.removeAllObjects()
        array66?.removeAllObjects()
        
        
        DispatchQueue(label:"matthew.finalios").async {
            if !((array11?.write(to: url1, atomically: true))!) {
                print("Error writing plist to \(url4)")
            }
            if !((array22?.write(to: url2, atomically: true))!) {
                print("Error writing plist to \(url4)")
            }
            if !((array33?.write(to: url3, atomically: true))!) {
                print("Error writing plist to \(url4)")
            }
            if !((array44?.write(to: url4, atomically: true))!) {
                print("Error writing plist to \(url4)")
            }
            if !((array55?.write(to: url5, atomically: true))!) {
                print("Error writing plist to \(url4)")
            }
            if !((array66?.write(to: url6, atomically: true))!) {
                print("Error writing plist to \(url4)")
            }
        }
        
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
        
    }
}


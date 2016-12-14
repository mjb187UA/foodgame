//
//  AddViewController.swift
//  finalios
//
//  Created by Baker,Matthew on 12/12/16.
//  Copyright © 2016 Matthew Baker. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var qlabel: UITextField!
    @IBOutlet weak var a1label: UITextField!
    @IBOutlet weak var a2label: UITextField!
    @IBOutlet weak var a3label: UITextField!
    @IBOutlet weak var a4label: UITextField!
    @IBOutlet weak var switcha1: UISwitch!
    @IBOutlet weak var switcha2: UISwitch!
    @IBOutlet weak var switcha3: UISwitch!
    @IBOutlet weak var switcha4: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func addToPlist(_ sender: AnyObject) {
        
        /*let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let url = URL(fileURLWithPath: paths[0]).appendingPathComponent("customQuestions")
        
        let questions = NSMutableArray(contentsOf: url)
        
        questions?.add("test")
        
        DispatchQueue(label: "edu.uakron.cs.ios.tryplist").async {
            if !((questions?.write(to: url, atomically: true))!) {
                print("failed")
            }
        }
        
        let reader = NSArray(contentsOf: url)
        
        print(reader)*/
        
        
        
        // write plist as local document
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let url1 = URL(fileURLWithPath: paths[0]).appendingPathComponent("questionList.plist")
        let url2 = URL(fileURLWithPath: paths[0]).appendingPathComponent("Answer1List.plist")
        let url3 = URL(fileURLWithPath: paths[0]).appendingPathComponent("Answer2List.plist")
        let url4 = URL(fileURLWithPath: paths[0]).appendingPathComponent("Answer3List.plist")
        let url5 = URL(fileURLWithPath: paths[0]).appendingPathComponent("Answer4List.plist")
        let url6 = URL(fileURLWithPath: paths[0]).appendingPathComponent("CorrectAnswerList.plist")
    
        //print(url2)
        
        /*let Qpath = Bundle.main.path(forResource: "questionList", ofType: "plist")
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
        let correctAnswerArray = NSArray(contentsOfFile: CApath!)*/
            
   
        
        
        
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
        
        /*let array1:NSMutableArray = questionArray as! NSMutableArray
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
        }*/
        
        //questions?.write(to: url, atomically: true)
        
        
        
        
        let array11 = NSMutableArray(contentsOf: url1)
        let array22 = NSMutableArray(contentsOf: url2)
        let array33 = NSMutableArray(contentsOf: url3)
        let array44 = NSMutableArray(contentsOf: url4)
        let array55 = NSMutableArray(contentsOf: url5)
        let array66 = NSMutableArray(contentsOf: url6)
        
        array11?.add("test1")
        array22?.add("test2")
        array33?.add("test3")
        array44?.add("test4")
        array55?.add("test5")
        array66?.add("test6")
        
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
        
        /*array11?.write(to: url1, atomically: true)
        array22?.write(to: url1, atomically: true)
        array33?.write(to: url1, atomically: true)
        array44?.write(to: url1, atomically: true)
        array55?.write(to: url1, atomically: true)
        array66?.write(to: url1, atomically: true)*/
        
        
        print(array11)
        print(array22)
        print(array33)
        print(array44)
        print(array55)
        print(array66)
        
        print("ARRAY1:  \(array11?.count)")
        print("ARRAY2:  \(array22?.count)")
        print("ARRAY3:  \(array33?.count)")
        print("ARRAY4:  \(array44?.count)")
        print("ARRAY5:  \(array55?.count)")
        print("ARRAY6:  \(array66?.count)")
        
    }

    @IBAction func switcha1Change(_ sender: UISwitch) {
        if(switcha1.isOn) {
            switcha1.setOn(false, animated: true)
            switcha2.setOn(false, animated: true)
            switcha3.setOn(false, animated: true)
            switcha4.setOn(false, animated: true)
        }else {
            switcha1.setOn(true, animated: true)
            switcha2.setOn(false, animated: true)
            switcha3.setOn(false, animated: true)
            switcha4.setOn(false, animated: true)
        }
    }
    
    @IBAction func switcha2Change(_ sender: UISwitch) {
        if(switcha2.isOn) {
            switcha1.setOn(false, animated: true)
            switcha2.setOn(false, animated: true)
            switcha3.setOn(false, animated: true)
            switcha4.setOn(false, animated: true)
        }else {
            switcha1.setOn(false, animated: true)
            switcha2.setOn(true, animated: true)
            switcha3.setOn(false, animated: true)
            switcha4.setOn(false, animated: true)
        }
    }
    
    @IBAction func switch3Change(_ sender: UISwitch) {
        if(switcha3.isOn) {
            switcha1.setOn(false, animated: true)
            switcha2.setOn(false, animated: true)
            switcha3.setOn(false, animated: true)
            switcha4.setOn(false, animated: true)
        }else {
            switcha1.setOn(false, animated: true)
            switcha2.setOn(false, animated: true)
            switcha3.setOn(true, animated: true)
            switcha4.setOn(false, animated: true)
        }
    }
    
    @IBAction func switch4Change(_ sender: UISwitch) {
        if(switcha4.isOn) {
            switcha1.setOn(false, animated: true)
            switcha2.setOn(false, animated: true)
            switcha3.setOn(false, animated: true)
            switcha4.setOn(false, animated: true)
        }else {
            switcha1.setOn(false, animated: true)
            switcha2.setOn(false, animated: true)
            switcha3.setOn(false, animated: true)
            switcha4.setOn(true, animated: true)
        }
    }
    
    
}

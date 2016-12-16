//
//  MyViewController.swift
//  finalios
//
//  Created by Larry Baker on 11/27/16.
//  Copyright © 2016 Matthew Baker, Todd Locker. All rights reserved.
//

import UIKit

class MyViewController: UIViewController{

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var wrongLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var answer1Text: String = ""
    var answer2Text: String = ""
    var answer3Text: String = ""
    var answer4Text: String = ""
    var correctText: String = ""
    var correct: Int = 0
    var wrong: Int = 0
    var pageIndex: Int = 0
    var question: String = ""
    var counter: Double = 60

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(MyViewController.updateTimer), userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.questionLabel.text = question
        self.wrongLabel.text = "Wrong: \(wrong)"
        self.rightLabel.text = "Correct: \(correct)"
        self.button1!.setTitle(answer1Text, for: UIControlState.normal)
        self.button2!.setTitle(answer2Text, for: UIControlState.normal)
        self.button3!.setTitle(answer3Text, for: UIControlState.normal)
        self.button4!.setTitle(answer4Text, for: UIControlState.normal)
        self.timeLabel.text = String(Int(counter))
        
    }
    

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func button1next(_ sender: AnyObject) {
        let pvc = self.parent as! gamePageViewController
        let answer = button1.currentTitle
        if answer == correctText{
            pvc.right += 1
        }
        else{
            pvc.wrong += 1
        }

        pvc.counter = counter
        pvc.nextPageWithIndex(index: pageIndex)
    }
    
    @IBAction func button2next(_ sender: AnyObject) {
        let pvc = self.parent as! gamePageViewController
        let answer = button2.currentTitle
        if answer == correctText{
            pvc.right += 1
        }
        else{
            pvc.wrong += 1
        }
        
        pvc.counter = counter
        pvc.nextPageWithIndex(index: pageIndex)
    }
    
    @IBAction func button3next(_ sender: AnyObject) {
        let pvc = self.parent as! gamePageViewController
        let answer = button3.currentTitle;
        if answer == correctText{
            pvc.right += 1
        }
        else{
            pvc.wrong += 1
        }
        
        pvc.counter = counter
        pvc.nextPageWithIndex(index: pageIndex)
    }
    
    @IBAction func button4next(_ sender: AnyObject) {
        let pvc = self.parent as! gamePageViewController
        let answer = button4.currentTitle
        if answer == correctText{
            pvc.right += 1
        }
        else{
            pvc.wrong += 1
        }
        
        pvc.counter = counter
        pvc.nextPageWithIndex(index: pageIndex)
    }
    
    func updateTimer()
    {
        counter -= 0.1
        timeLabel.text = String(Int(counter))
        
        /*if (counter == 0)
        {
            let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
            let url1 = URL(fileURLWithPath: paths[0]).appendingPathComponent("user.plist")
            
            let array11 = NSMutableArray(contentsOf: url1)
            
            
            array11?.replaceObject(at: 2, with: String(correct))
            array11?.replaceObject(at: 3, with: String(wrong))
            
            
            let oldScore = array11?.object(at: 1) as! String
            
            let oldScore1 = Int(oldScore)
            
            if(oldScore1! < correct)
            {
                array11?.replaceObject(at: 1, with: String(correct))
            }
            
            
            
            DispatchQueue(label:"matthew.finalios").async {
                if !((array11?.write(to: url1, atomically: true))!) {
                    print("Error writing plist to \(url1)")
                }
            }
            print("I was ran")
            let HomeVC = storyboard?.instantiateViewController(withIdentifier: "endGameViewController") as! endGameViewController
            self.present(HomeVC, animated: true, completion: nil)
        }*/
    }
}

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
    var counter: Int = 60

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(MyViewController.updateTimer), userInfo: nil, repeats: true)
        
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
        self.timeLabel.text = String(counter)
        
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
        counter -= 1
        timeLabel.text = String(counter)
    }
}

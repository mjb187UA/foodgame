//
//  endGameViewController.swift
//  finalios
//
//  Created by Baker,Matthew on 12/14/16.
//  Copyright © 2016 Matthew Baker. All rights reserved.
//

import UIKit

class endGameViewController: UIViewController {

    @IBOutlet weak var wrongLabel: UILabel!
    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var highscoreLabel: UILabel!
    @IBOutlet weak var testlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let url1 = URL(fileURLWithPath: paths[0]).appendingPathComponent("user.plist")
        
        let array11 = (NSArray(contentsOf: url1) as! Array<Any>)

        self.testlabel.text = String(describing: array11[0])
        self.highscoreLabel.text = "High Score: " + String(describing: array11[1])
        self.correctLabel.text = "Correct: " + String(describing: array11[2])
        self.wrongLabel.text = "Wrong: " + String(describing: array11[3])
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

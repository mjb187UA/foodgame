//
//  endGameViewController.swift
//  finalios
//
//  Created by Baker,Matthew on 12/14/16.
//  Copyright © 2016 Matthew Baker. All rights reserved.
//

import UIKit

class endGameViewController: UIViewController {

    @IBOutlet weak var testlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        let pvc = self.
        
        self.testlabel.text = String(pvc.right)
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

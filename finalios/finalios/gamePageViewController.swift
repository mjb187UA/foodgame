//
//  gamePageViewController.swift
//  finalios
//
//  Created by Larry Baker on 11/27/16.
//  Copyright © 2016 Matthew Baker, Todd Locker. All rights reserved.
//

import UIKit

extension Array
{
    /** Randomizes the order of an array's elements. */
    mutating func shuffle()
    {
        for _ in 0..<10
        {
            sort { (_,_) in arc4random() < arc4random() }
        }
    }
}

class gamePageViewController: UIPageViewController, UIPageViewControllerDataSource  {

    var pvc: UIPageViewController!
    var test: NSArray = NSArray()
    var answer1: [String] = []
    var answer2: [String] = []
    var answer3: [String] = []
    var answer4: [String] = []
    var correct: [String] = []
    var shuffled: [Int] = [0,1,2,3,4,5,6,7,8,9]
    var right: Int = 0
    var wrong: Int = 0
    var counter: Double = 60
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
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
        
        
        
        test = questionArray as! [String] as NSArray
        answer1 = answer1Array as! [String]
        answer2 = answer2Array as! [String]
        answer3 = answer3Array as! [String]
        answer4 = answer4Array as! [String]
        correct = correctAnswerArray as! [String]
        
        shuffled.shuffle()
        
        self.dataSource = self
        self.setViewControllers([getViewControllerAtIndex(index: 0)] as [UIViewController], direction: UIPageViewControllerNavigationDirection.forward, animated: false, completion: nil)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    func getViewControllerAtIndex(index: NSInteger) -> UIViewController
    {
        // Create a new view controller and pass suitable data.
        let myViewController = storyboard?.instantiateViewController(withIdentifier: "MyViewController") as! MyViewController
        
        if(index > test.count-1) {
            print("No more questions!!!")
            let HomeVC = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            return HomeVC
        }
        
        myViewController.question = "\(test[shuffled[index]])"
        myViewController.answer1Text = self.answer1[shuffled[index]]
        myViewController.answer2Text = self.answer2[shuffled[index]]
        myViewController.answer3Text = self.answer3[shuffled[index]]
        myViewController.answer4Text = self.answer4[shuffled[index]]
        myViewController.correctText = self.correct[shuffled[index]]
        myViewController.pageIndex = index
        myViewController.correct = right
        myViewController.wrong = wrong
        myViewController.counter = counter
        return myViewController
    }
    
    
    func pageViewController(_ MyViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
    {
        let pageContent: MyViewController = viewController as! MyViewController
        var index = pageContent.pageIndex
        if ((index == 0) || (index == NSNotFound))
        {
            return nil
        }
        index -= 1
        return nil
    }
    
    func pageViewController(_ MyViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
        let pageContent: MyViewController = viewController as! MyViewController
        var index = pageContent.pageIndex
    
        if (index == NSNotFound)
        {
            return nil
        }
        index += 1;
        if (index == test.count)
        {
            return nil
        }
        
        return nil
    }
    
    func nextPageWithIndex(index : Int)
    {
        let nextVC = self.getViewControllerAtIndex(index: index+1)
        setViewControllers([nextVC], direction: .forward, animated: true, completion: nil)
    }
    

    
}

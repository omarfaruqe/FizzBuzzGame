//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Omar Faruqe on 2016-06-24.
//  Copyright © 2016 Omar Faruqe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var countScore:Int = 0
    let highScoreData = "highScoreData"
    @IBOutlet weak var highScore: UILabel!
    @IBOutlet weak var completedScore: UILabel!
    @IBOutlet weak var countButtonLabel: UIButton!

    //let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countButtonLabel.titleLabel?.text = "\(countScore)"
        
//        let defaults = NSUserDefaults.standardUserDefaults()
//        defaults.setInteger(countScore, forKey: highScoreData)
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let name = defaults.integerForKey(highScoreData)
        highScore.text = "\(name)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func countButton(sender: UIButton) {
        var currentLabel = Int(countButtonLabel.titleLabel!.text!)!
        currentLabel += 1
        print(currentLabel)
        
        if(((currentLabel % 3) != 0) && ((currentLabel % 5) != 0)){
            countButtonLabel.setTitle("\(currentLabel)", forState: .Normal)
        }
        else {
            let defaults = NSUserDefaults.standardUserDefaults()
            let name = defaults.integerForKey(highScoreData)
            if(name < currentLabel){
                highScore.text = "\(currentLabel)"
                defaults.setInteger(currentLabel - 1, forKey: highScoreData)
            }
            else{
                highScore.text = "\(name)"
            }
            currentLabel = 0
            countButtonLabel.setTitle("\(currentLabel)", forState: .Normal)
        }
        
    }

    @IBAction func divisibleByThree(sender: UIButton) {
        var currentLabel = Int(countButtonLabel.titleLabel!.text!)!
        currentLabel += 1
        print(currentLabel)
        if(((currentLabel % 3) == 0) && ((currentLabel % 5) != 0)){
            countButtonLabel.setTitle("\(currentLabel)", forState: .Normal)
        }
        else {
            let defaults = NSUserDefaults.standardUserDefaults()
            let name = defaults.integerForKey(highScoreData)
            if(name < currentLabel){
                highScore.text = "\(currentLabel)"
                defaults.setInteger(currentLabel - 1, forKey: highScoreData)
            }
            else{
                highScore.text = "\(name)"
            }
            currentLabel = 0
            countButtonLabel.setTitle("\(currentLabel)", forState: .Normal)
        }
    }
    
    @IBAction func divisibleByFive(sender: UIButton) {
        var currentLabel = Int(countButtonLabel.titleLabel!.text!)!
        currentLabel += 1
        print(currentLabel)
        
        if(((currentLabel % 5) == 0) && ((currentLabel % 3) != 0)){
            countButtonLabel.setTitle("\(currentLabel)", forState: .Normal)
        }
        else {
            let defaults = NSUserDefaults.standardUserDefaults()
            let name = defaults.integerForKey(highScoreData)
            if(name < currentLabel){
                highScore.text = "\(currentLabel)"
                defaults.setInteger(currentLabel - 1, forKey: highScoreData)
            }
            else{
                highScore.text = "\(name)"
            }
            currentLabel = 0
            countButtonLabel.setTitle("\(currentLabel)", forState: .Normal)
        }
    }
    
    @IBAction func divisibleByThreeAndFive(sender: UIButton) {
        var currentLabel = Int(countButtonLabel.titleLabel!.text!)!
        currentLabel += 1
        print(currentLabel)
        
        if(((currentLabel % 5) == 0) && ((currentLabel % 3) == 0)){
            countButtonLabel.setTitle("\(currentLabel)", forState: .Normal)
        }
        else {
            let defaults = NSUserDefaults.standardUserDefaults()
            let name = defaults.integerForKey(highScoreData)
            if(name < currentLabel){
                highScore.text = "\(currentLabel)"
                defaults.setInteger(currentLabel - 1, forKey: highScoreData)
            }
            else{
                highScore.text = "\(name)"
            }
            currentLabel = 0
            countButtonLabel.setTitle("\(currentLabel)", forState: .Normal)
        }
    }
}


//
//  ViewController.swift
//  project1
//
//  Created by Gurmeet on 20/03/2017.
//  Copyright © 2017 Gurmeet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Secondscreen
    @IBOutlet weak var secondscreen: UIView!
    //Constrain
    
    // VARIABLES
    var num1 : Int = 0
    var num2 : Int = 0
    var ans : Int = 0
    var finalanswer = 0
    var continuous = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        secondscreen.isHidden = true
        randomnumbergenerator()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Buttons
    @IBAction func zero(_ sender: UIButton) {
        answer.text = "?"
        finalanswer = 0
        checkanswers()

    }
    @IBAction func one(_ sender: UIButton) {
        answer.text = "?"
        finalanswer = 1
        checkanswers()
    }
    @IBAction func two(_ sender: UIButton) {
        answer.text = "?"
        finalanswer = 2
        checkanswers()
    }
    @IBAction func three(_ sender: UIButton) {
        answer.text = "?"
        finalanswer = 3
        checkanswers()
    }
    @IBAction func four(_ sender: UIButton) {
        answer.text = "?"
        finalanswer = 4
        checkanswers()
    }
    @IBAction func five(_ sender: UIButton) {
        answer.text = "?"
        finalanswer = 5
        checkanswers()
    }
    @IBAction func six(_ sender: UIButton) {
        answer.text = "?"
        finalanswer = 6
        checkanswers()
    }
    @IBAction func seven(_ sender: UIButton) {
        answer.text = "?"
        finalanswer = 7
        checkanswers()
    }
    @IBAction func eight(_ sender: UIButton) {
        answer.text = "?"
        finalanswer = 8
        checkanswers()
    }
    @IBAction func nine(_ sender: UIButton) {
        answer.text = "?"
        finalanswer = 9
        checkanswers()
    }
    
    
    @IBOutlet weak var Star1: UIImageView!
    @IBOutlet weak var Star2: UIImageView!
    @IBOutlet weak var Star3: UIImageView!
    @IBOutlet weak var thumb: UIImageView!

    
    // Reset BUTTON
    @IBAction func reset(_ sender: UIButton) {
        randomnumbergenerator()
    }
    
    // View the answer

    @IBOutlet weak var answer: UILabel!
    
    // Youtube video REMOVE IF NOT NEEDED
    @IBOutlet weak var trylady: UILabel!
    
    

    
    // FUNCTION RANDOM NUMBERS
    func randomnumbergenerator(){
        num1 = Int(arc4random_uniform(5))
        num2 = Int(arc4random_uniform(6))
        ans = num1 + num2
        Printans()
    }
    
    // PRINT Answer
    func Printans(){
        trylady.text = "\(num1) + \(num2) = "
    }
    
    // Answer checking
    func checkanswers(){
        if finalanswer == ans {
            secondscreen.isHidden = false
            continuous = continuous + 1
            starsHanging()
        }
        else {
            
        }
    }

    // Flashing Stars
    func starsHanging(){
        UIView.animate(withDuration: 0.5, delay: 0.4, options: [.repeat, .autoreverse],
                       animations: {
                        self.Star1.alpha = 0.0
                        self.Star2.alpha = 0.2
                        self.Star3.alpha = 0.0
        },
                       completion: nil
        )

                       
    }
    
    
}

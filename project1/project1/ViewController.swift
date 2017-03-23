//
//  ViewController.swift
//  project1
//
//  Created by Gurmeet on 20/03/2017.
//  Copyright © 2017 Gurmeet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Buttons
    @IBAction func zero(_ sender: UIButton) {
    }
    @IBAction func one(_ sender: UIButton) {
    }
    @IBAction func two(_ sender: UIButton) {
    }
    @IBAction func three(_ sender: UIButton) {
    }
    @IBAction func four(_ sender: UIButton) {
    }
    @IBAction func five(_ sender: UIButton) {
    }
    @IBAction func six(_ sender: UIButton) {
    }
    @IBAction func seven(_ sender: UIButton) {
    }
    @IBAction func eight(_ sender: UIButton) {
    }
    @IBAction func nine(_ sender: UIButton) {
    }
    
    
    // Reset BUTTON
    @IBAction func reset(_ sender: UIButton) {
        randomnumbergenerator()
    }
    
    // View the numbers and answer
    @IBOutlet weak var number1: UILabel!
    @IBOutlet weak var number2: UILabel!
    @IBOutlet weak var answer: UILabel!
    
    // Youtube video REMOVE IF NOT NEEDED
    @IBOutlet weak var trylady: UILabel!
    
    
    // VARIABLES
    var num1 : Int = 0
    var num2 : Int = 0
    var ans : Int = 0
    
    // FUNCTION RANDOM NUMBERS
    func randomnumbergenerator(){
        num1 = Int(arc4random_uniform(5))
        num2 = Int(arc4random_uniform(6))
        ans = num1 + num2
        Printans()
    }
    
    // PRINT Answer
    func Printans(){
        trylady.text = "\(num1) + \(num2) = ?"
    }
    
    
    

}


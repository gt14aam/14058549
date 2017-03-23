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
        answer.text = "0"
    }
    @IBAction func one(_ sender: UIButton) {
        answer.text = "1"
    }
    @IBAction func two(_ sender: UIButton) {
        answer.text = "2"
    }
    @IBAction func three(_ sender: UIButton) {
        answer.text = "3"
    }
    @IBAction func four(_ sender: UIButton) {
        answer.text = "4"
    }
    @IBAction func five(_ sender: UIButton) {
        answer.text = "5"
    }
    @IBAction func six(_ sender: UIButton) {
        answer.text = "6"
    }
    @IBAction func seven(_ sender: UIButton) {
        answer.text = "7"
    }
    @IBAction func eight(_ sender: UIButton) {
        answer.text = "8"
    }
    @IBAction func nine(_ sender: UIButton) {
        answer.text = "9"
    }
    
    
    // Reset BUTTON
    @IBAction func reset(_ sender: UIButton) {
        randomnumbergenerator()
    }
    
    // View the answer

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
    
    // Load answer
    func loadans(){

    }

}

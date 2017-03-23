//
//  ViewController.swift
//  project1
//
//  Created by Gurmeet on 20/03/2017.
//  Copyright © 2017 Gurmeet. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //Secondscreen
    @IBOutlet weak var secondscreen: UIView!
    
    // VARIABLES
    var num1 : Int = 0
    var num2 : Int = 0
    var ans : Int = 0
    var finalanswer = 0
    var continuous = 0
    var audioplayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        secondscreen.isHidden = true
        randomnumbergenerator()
        MovingCloud()
        question()
        song()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Buttons
    @IBAction func zero(_ sender: UIButton) {
        finalanswer = 0
        checkanswers()

    }
    @IBAction func one(_ sender: UIButton) {
        finalanswer = 1
        checkanswers()
    }
    @IBAction func two(_ sender: UIButton) {
        finalanswer = 2
        checkanswers()
    }
    @IBAction func three(_ sender: UIButton) {
        finalanswer = 3
        checkanswers()
    }
    @IBAction func four(_ sender: UIButton) {
        finalanswer = 4
        checkanswers()
    }
    @IBAction func five(_ sender: UIButton) {
        finalanswer = 5
        checkanswers()
    }
    @IBAction func six(_ sender: UIButton) {
        finalanswer = 6
        checkanswers()
    }
    @IBAction func seven(_ sender: UIButton) {
        finalanswer = 7
        checkanswers()
    }
    @IBAction func eight(_ sender: UIButton) {
        finalanswer = 8
        checkanswers()
    }
    @IBAction func nine(_ sender: UIButton) {
        finalanswer = 9
        checkanswers()
    }
    
    // Images
    @IBOutlet weak var Star1: UIImageView!
    @IBOutlet weak var Star2: UIImageView!
    @IBOutlet weak var Star3: UIImageView!
    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var Cloud1: UIImageView!
    @IBOutlet weak var Cloud2: UIImageView!
    @IBOutlet weak var Cloud3: UIImageView!

    // View the answer
    @IBOutlet weak var answer: UILabel!
    // Youtube video REMOVE IF NOT NEEDED
    @IBOutlet weak var trylady: UILabel!
    
    //SONG for first screen
    func song(){
        do{
            audioplayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "bensound-buddy", ofType: "mp3")!))
            audioplayer.numberOfLoops = -1
            audioplayer.play()
        }
        catch{
            print("error")
        }
    }
    // Second screen song
    func song2(){
        do{
            audioplayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Kids Saying Yay! Sound Effect", ofType: "mp3")!))
            audioplayer.numberOfLoops = -1
            audioplayer.play()
        }
        catch{
            print("error")
        }
    }
    
    // FUNCTION RANDOM NUMBERS
    func randomnumbergenerator(){
        num1 = Int(arc4random_uniform(5))
        num2 = Int(arc4random_uniform(6))
        ans = num1 + num2
        Printans()
    }
    
    // Question
    func Printans(){
        trylady.text = "\(num1) + \(num2) = "
    }
    
    // Answer checking
    func checkanswers(){
        if finalanswer == ans {
            secondscreen.isHidden = false
            continuous = continuous + 1
            starsHanging()
            song2()
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
                        self.thumb.transform = CGAffineTransform(scaleX: 2, y: 2)
        },
                       completion: nil
        )

                       
    }
    // Clouds
    func MovingCloud(){
        UIView.animate(withDuration: 5.0 , delay: 0.7,options: [.repeat, .autoreverse],
    
        animations: {
            self.Cloud1.center.x += self.view.bounds.width
            self.Cloud2.center.x += self.view.bounds.width
            self.Cloud3.center.x += self.view.bounds.width
    },
        completion: nil
    )
    }
    // Flashing questionmark
    func question(){
        UIView.animate(withDuration: 0.4, delay: 0.2, options: [.repeat, .autoreverse],
                       animations: {
                        self.answer.alpha = 0.1
                        

        },
                       completion: nil
        )
    }

    
}

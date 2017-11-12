//
//  ViewController.swift
//  Dicee
//
//  Created by Tyrone Saulon on 2017-11-10.
//  Copyright © 2017 Tyrone Saulon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    var diceString1 = ""
    var diceString2 = ""
    
    
  //  let diceValues = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6",]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
       updateDiceImages()
    }

    func updateDiceImages()
    {
        
        //without +1 randomDice recieves random numbers in a range
        //between 0 - 5; +1 makes it 1 - 6
        randomDiceIndex1 = Int(arc4random_uniform(6)) + 1
        randomDiceIndex2 = Int(arc4random_uniform(6)) + 1
        
        diceImageView1.image =  UIImage(named: "dice\(randomDiceIndex1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}

//
//  ViewController.swift
//  guessandbet
//
//  Created by Wai Thura Tun on 19/06/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var randomLabel: UILabel!
    @IBOutlet weak var guessLabel: UILabel!
    @IBOutlet weak var betLabel: UILabel!
    
    var guessNumber = 1;
    var betCount = 150;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func run(_ sender: UIButton) {
        
    }
    
    @IBAction func increaseBet(_ sender: UIButton) {
        betCount += 50;
        updateBet();
    }
    
    @IBAction func decreaseBet(_ sender: UIButton) {
        if betCount > 50 {
            betCount -= 50;
        }
        updateBet();
    }
    
    @IBAction func increaseGuess(_ sender: UIButton) {
        if guessNumber < 10 {
            guessNumber += 1;
        }
        updateGuess();
    }
    
    @IBAction func decreaseGuess(_ sender: UIButton) {
        if(guessNumber > 1) {
            guessNumber -= 1;
        }
        updateGuess();
    }
    
    func updateGuess() {
        guessLabel.text = "Guess Number : \(guessNumber)";
    }
    
    func updateBet() {
        betLabel.text = "Bet : \(betCount)";
    }
    
}


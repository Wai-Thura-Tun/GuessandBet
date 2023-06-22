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
    
    var guessNumber:Int = 1;
    var betCount:Int = 150;
    var randonNumber:Int = 1;
    var scoreNumber:Int = 0;
    
    let scoreText:String = "Your score : ";
    var alertTitle:String = "";
    var alertText:String = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel();
    }
    
    @IBAction func run(_ sender: UIButton) {
        randonNumber = Int.random(in: 1...10);
        if randonNumber == guessNumber {
            scoreNumber += betCount;
            alertTitle = "Congratulation";
            alertText = "You win";
        }
        else {
            scoreNumber -= betCount;
            alertTitle = "Sorry";
            alertText = "You lose";
        }
        
        if(scoreNumber < -2500) {
            scoreNumber = 0;
        }
        else {
            let alert = UIAlertController(title: alertTitle, message: alertText, preferredStyle: .alert);
            alert.addAction(UIAlertAction(title: "OK", style: .default));
            self.present(alert, animated: true);
        }
        updateLabel();
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
        guessLabel.text = "\(guessNumber)";
    }
    
    func updateBet() {
        betLabel.text = "\(betCount)";
    }
    
    func updateLabel() {
        scoreLabel.text = "\(scoreText) \(scoreNumber)";
        guessLabel.text = "\(guessNumber)";
        betLabel.text = "\(betCount)";
        randomLabel.text = "\(randonNumber)";
    }
    
}


//
//  viewController.swift
//  number-game
//
//  Created by Jiawen Wang on 20/11/23.
//

import Foundation

var targetNumber = Int(arc4random_uniform(100) + 1)

@@IBAction func checckGuess(_ sender: UIButton) {
    if let userGuess = Int(textField.text ?? "") {
               if userGuess == targetNumber {
                   feedbackLabel.text = "Correct! You guessed it!"
               } else if userGuess < targetNumber {
                   feedbackLabel.text = "Try a higher number."
               } else {
                   feedbackLabel.text = "Try a lower number."
               }
           } else {
               feedbackLabel.text = "Invalid input. Enter a number."
           }
}

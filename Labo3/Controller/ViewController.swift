//
//  ViewController.swift
//  Labo3
//
//  Created by Andreea Draghici on 2022-04-20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var userGuessedNumber: UITextField!
    @IBOutlet weak var numberOfGuessesLabel: UILabel!
    let randomNumberOptained = Int.random(in:0...100)
    var numberOfGuesses = 0
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        print(randomNumberOptained)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        if (Int(userGuessedNumber.text!)! > randomNumberOptained) && numberOfGuesses <= 10 {
            messageLabel.text = "Le nombre à deviner est plus petit ↙️"
            numberOfGuesses += 1
            numberOfGuessesLabel.text = "\(numberOfGuesses) / 10"
            
        } else if (Int(userGuessedNumber.text!)! < randomNumberOptained) && numberOfGuesses <= 10 {
            messageLabel.text = "Le nombre à deviner est plus grand ↗️"
            numberOfGuesses += 1
            numberOfGuessesLabel.text = "\(numberOfGuesses) / 10"
            
        } else if (Int(userGuessedNumber.text!)! == randomNumberOptained) && numberOfGuesses <= 10{
            messageLabel.text = "🎉 Vous avez gagné 🎉"
            numberOfGuesses += 1
            numberOfGuessesLabel.text = "\(numberOfGuesses) / 10"
        }else{
            messageLabel.text = "Vous avez perdu 💥"
            numberOfGuesses += 1
            numberOfGuessesLabel.text = "\(numberOfGuesses) / 10"
        }
    }
    
}


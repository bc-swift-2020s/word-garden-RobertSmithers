//
//  ViewController.swift
//  Word Garden
//
//  Created by RJ Smithers on 2/3/20.
//  Copyright © 2020 RJ Smithers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessedLetterField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var guessCountLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("In viewDidLoad, is guesedLetterField the first responder?", guessedLetterField.isFirstResponder)
    }
    
    func updateUIAfterGuess(){
        guessedLetterField.resignFirstResponder()
        guessedLetterField.text = ""
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        print("In doneKeyPressed, is guesedLetterField the first responder before updateUIAfterGuess?", guessedLetterField.isFirstResponder)
        updateUIAfterGuess()
        print("In doneKeyPressed, is guesedLetterField the first responder after updateUIAfterGuess?", guessedLetterField.isFirstResponder)
    }
    
    @IBAction func guessedLetterFieldChanged(_ sender: UITextField) {
        print("Hey! The gussedLetterFieldChanged!")
    }
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        print("In guessLetterButtonPressed, is guesedLetterField the first responder before updateUIAfterGuess?", guessedLetterField.isFirstResponder)
        updateUIAfterGuess()
        print("In guessLetterButtonPressed, is guesedLetterField the first responder after updateUIAfterGuess?", guessedLetterField.isFirstResponder)
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
    
}


//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    
    let quiz = [
        ["Four + Two is equal to Six", "True"],
        ["Eight - One is equal to Seven", "True"],
        ["Two + Four is equal to Eight", "False"],
    ]
    
    var questionNumber = 0
    var correctAnswers = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let answer = quiz[questionNumber][1]
        
        if userAnswer == answer {
            correctAnswers += 1
        }
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
            updateUI()
        } else {
            questionLabel.text = "You scored \(correctAnswers) out of \(quiz.count) correct!"
            questionNumber = 0
            correctAnswers = 0
        }
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
}


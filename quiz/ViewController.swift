//
//  ViewController.swift
//  quiz
//
//  Editted by Connor Gordon
//  Created by _____________ on ____________.
//  Copyright © 2016 CSC. All rights reserved.
//

import UIKit

// Global Array for the other Files to access
var questions = [String]()
var answers = [String]()

class ViewController: UIViewController {

    // Both Dynamic string Arrays that will increase in length and append new strings
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton)
    {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
           currentQuestionIndex = 0
        }
        questionLabel.text = questions[currentQuestionIndex]
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton)
    {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad()
    {
        questions.append("From what is cognac is made?")
        questions.append("What is 7+7?")
        questions.append("What is the capital of Vermont")
      
        answers.append("Grapes")
        answers.append("14")
        answers.append("Montpelier")
        
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }

}


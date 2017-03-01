//
//  AddQuestionViewController.swift
//  QA
//
//  Created by Connor Gordon on 2/28/17.
//  Copyright © 2017 CSC. All rights reserved.
//

import Foundation
import UIKit

class AddQuestions: UIViewController, UITextFieldDelegate
{
    
    @IBOutlet weak var enterQuestion: UITextField!
    @IBOutlet weak var enterAnswer: UITextField!
    @IBOutlet weak var addedPrompt: UILabel!
   
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    // Function that will enter in the new information to the current questions and answers string
    @IBAction func insertQA(_ sender: UIButton)
    {
        if enterQuestion.text!.isEmpty || enterAnswer.text!.isEmpty
        {
            print("Please enter a Question and Answer")
            enterQuestion.placeholder = "Please enter Question!"
            enterAnswer.placeholder = "Please enter an Answer!"
        }
        else
        {
            questions.append(enterQuestion.text!)
            answers.append(enterAnswer.text!)
            
            // Prompt to tell the user their content was added
            addedPrompt.text = "Question added! :)"
            addedPrompt.textColor = UIColor.blue
            self.addedPrompt.alpha = 1
            UIView.animate(withDuration: 0.9, delay: 0.0, options: [.autoreverse, .curveEaseInOut], animations:
                {
                    self.addedPrompt.alpha = 0
            }, completion: nil)        }
        
    }
}

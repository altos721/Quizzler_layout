//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["4 + 2 = 6", "True"],
        ["5 - 3 = 1", "False"],
        ["3 * 9 = 21", "False"]
    ]
    
    var questionNumber = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
        
        
    }

    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        
        
//        questionLabel.text = quiz[Int.random(in: 0...quiz.endIndex)]
        if (quiz[questionNumber][1] == sender.currentTitle) {
            questionNumber += 1
            updateUI()
        }
            
        
        
        
    }
    
    func updateUI() {
        if (questionNumber < quiz.endIndex) {
            
            questionLabel.text = quiz[questionNumber][0]
            
        }
        
    }
   

}


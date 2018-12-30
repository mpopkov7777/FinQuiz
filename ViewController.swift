//
//  ViewController.swift
//  Finance Quiz
//
//  Created by Mark Popkov  on 22/12/2018.
//  Copyright © 2018 Mark Popkov . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let questions = QuestionData()
    var answerChosen : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
   
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = questions.list[0]
        questionLabel.text = firstQuestion.questionText 
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            answerChosen = true
        }
        else if sender.tag == 2 {
            answerChosen = false
        }
        
        checkAnswer()
        
        questionNumber += 1
        nextQuestion()
        
    }
    
    
    
    func updateUI() {
        
        scoreLabel.text = "Score:\(score)"
        progressLabel.text = "\(questionNumber + 1)/13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
        
    }
    
    
    func nextQuestion() {
        if questionNumber <= 12 {
        questionLabel.text = questions.list[questionNumber].questionText
            
        updateUI()
            
        }
        else {
            
            let alert = UIAlertController(title: "Quiz completed", message: "Do you want to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default)
               { (UIAlertAction) in
                self.startOver() }
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        }
    }
    
    
    func checkAnswer() {
        
        let correctAnswer = questions.list[questionNumber].answer
        if correctAnswer == answerChosen {
            print("Correct")
            score += 1
        }
        else {
            print("Wrong")
        }
    
        
    }
    
    
    func startOver() {
        
        score = 0
        questionNumber = 0
        nextQuestion() 
        
    }
    

    
    
}


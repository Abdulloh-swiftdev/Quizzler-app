//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    let allQuestions = QuestionBank()
    var givedAnswer = false
    var score = 0
    var questionNumber = 0
    let score1 = "Score:"
    var numberOfQuestion = 1
    let sumOfTheQuestions = "/10"
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        let firstQuestion = allQuestions.myArray[0]
        questionLabel.text = firstQuestion.question
        scoreLabel.text = "\(score1)\(score)"
        progressLabel.text = "\(numberOfQuestion)\(sumOfTheQuestions)"
        
    
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
       
        if sender.tag == 1{
            givedAnswer = true
        }
        else if sender.tag == 2 {
            givedAnswer = false
        }
        checkAnswer()
        
        nextQuestion()
        
    }
    
    
    func updateUI() {
         numberOfQuestion += 1
         progressLabel.text = "\(numberOfQuestion)\(sumOfTheQuestions)"
       
    }
    

    func nextQuestion() {
         questionNumber += 1
        if questionNumber <= 9 {
            questionLabel.text = allQuestions.myArray[questionNumber].question
           updateUI()
            
        }
        
        else {
            
            let alert = UIAlertController(title: "Congratulations!!!", message: "You passed this questions for real geeks.Here is your results:1)If your score is 10 or 9, you are 'Iron Man';2)If your score is 8 or 7 'Spider Man';3)And if your score is less then 7, you are 'Hulk'", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Start over", style: .default, handler: {(UIAlertAction) in self.startOver()})
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.myArray[questionNumber].answer
        
        if givedAnswer == correctAnswer{
             ProgressHUD.showSuccess("correct")
             score += 1
             scoreLabel.text = "\(score1)\(score)"
        }
        else {
            ProgressHUD.showError("wrong")
        }
    }
    
    
    func startOver() {
        numberOfQuestion = 0
        progressLabel.text = "\(numberOfQuestion)\(sumOfTheQuestions)"
        score = 0
        scoreLabel.text = "\(score1)\(score)"
        questionNumber = 0
        nextQuestion()
        
    }
    

    
}

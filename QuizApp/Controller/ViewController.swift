//
//  ViewController.swift
//  QuizApp
//
//  Created by Sidhartha Das on 28/04/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstbtn: UIButton!
    @IBOutlet weak var scoreLebel: UILabel!
    @IBOutlet weak var thirdbtn: UIButton!
    @IBOutlet weak var textLebel: UILabel!
    
    @IBOutlet weak var secondbtn: UIButton!
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    
     
    var quizBrain = QuizBrain()
    
        override func viewDidLoad() {
        super.viewDidLoad()
            updateUi()
          
       
        }
    
    
    @IBAction func btnPressed(_ sender: UIButton) {
       
        
        let userAnswer = sender.currentTitle!
        let userGot = quizBrain.checkAnswer(userAnswer)
     //  let actualanswer = quiz[questionNumber].answer
        if userGot {
            sender.backgroundColor=UIColor.green
        }
        else{
            sender.backgroundColor=UIColor.red
        }
        quizBrain.nextQuestion()
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats:false){(Timer) in

            self.updateUi()
             }
    }
  func updateUi(){
    textLebel.text = quizBrain.getQuestionText()
    scoreLebel.text="Score =\(quizBrain.checkScore())"
    //clear background color
        firstbtn.backgroundColor=UIColor.clear
        thirdbtn.backgroundColor=UIColor.clear
        secondbtn.backgroundColor=UIColor.clear
    //setbtn text
    let choicebtn=quizBrain.getAnswer()
    
    firstbtn.setTitle(choicebtn[0] ,for: .normal)
    secondbtn.setTitle(choicebtn[1], for: .normal)
    thirdbtn.setTitle(choicebtn[2], for: .normal)
    
   // let totalQuestion = quiz.count
   // let questionRemain = totalQuestion - questionNumber
    progressBar.progress = quizBrain.getProgress()


    }
    

}

//
//  question.swift
//  QuizApp
//
//  Created by Sidhartha Das on 29/04/21.
//

import Foundation
struct Question {
    let text:String
    let answer:[String]
    let ca:String
    
    init(q:String,a:[String],correctAnswer:String) {
        text=q
        answer=a
        ca=correctAnswer
    }
    
}



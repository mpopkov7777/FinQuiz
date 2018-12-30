//
//  Question.swift
//  Finance Quiz
//
//  Created by Mark Popkov  on 22/12/2018.
//  Copyright © 2018 Mark Popkov . All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool) {
    questionText = text 
    answer = correctAnswer
    }

}




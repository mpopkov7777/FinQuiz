//
//  Question data.swift
//  Finance Quiz
//
//  Created by Mark Popkov  on 22/12/2018.
//  Copyright © 2018 Mark Popkov . All rights reserved.
//

import Foundation

class QuestionData {
    
    var list = [Question]()
    
    init() {
        
        
        list.append(Question(text: "The expected return of a share is also referred to as the equity cost of capital", correctAnswer: true))
        
        list.append(Question(text: "For most investments you should use the arithmetic return instead of the geometric return as a discount factor", correctAnswer: true))
        
        list.append(Question(text: "Asset diversification can eliminate both ideosyncratic and systematic risk", correctAnswer: false))
        
        list.append(Question(text: "The company cost of capital is the appropriate discount rate to evaluate the firms average projects", correctAnswer: true))
        
        list.append(Question(text: "Preferred stock holders recieve a fixed dividend payment and have voting rights", correctAnswer: false))
        
        list.append(Question(text: "Costs associated with the Principle-Agent problem are referred to as agency costs", correctAnswer: true))
        
        list.append(Question(text: "The Put-Call parity states that the price of a call plus the present value of the exercise equals the price of the put plus the share price", correctAnswer: true))
        
        list.append(Question(text: "If a new project of a company is exactly as risky as the company on average, the project cost of capital equals the company cost of capital and can be used to appraise it", correctAnswer: true))
        
        list.append(Question(text: "Semi-Strong EMH suggests that profits cannot be made using technical analysis, but can be made using fundamental analysis", correctAnswer: false))
        
        list.append(Question(text: "Managers should make their investments decisions based on the consumption preferences of shareholders", correctAnswer: false))
        
        list.append(Question(text: "A perpetuity is a security that pays each year a constant amount of money for a fixed number of years", correctAnswer: false))
        
        list.append(Question(text: "IRR and accounting based investing are generally preferred to using the NPV", correctAnswer: false))
        
        list.append(Question(text: "Strong form EMH states that asset prices reflect all publically available information apart from insider information", correctAnswer: false))
    }
    
}

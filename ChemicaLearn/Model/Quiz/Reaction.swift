//
//  SimpleReaction.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 5/15/24.
//

import Foundation

struct Reaction {
    let question : String
    let questionSolution : String
    let choice1 : String
    let choice2 : String
    let choice3 : String
    let choice4 : String
    let correctChoice : String
    
    init(
        _ question: String,
        _ questionSolution: String,
        _ choice1: String,
        _ choice2: String,
        _ choice3: String,
        _ choice4: String,
        _ correctChoice: String
    ) {
        self.question = question
        self.questionSolution = questionSolution
        self.choice1 = choice1
        self.choice2 = choice2
        self.choice3 = choice3
        self.choice4 = choice4
        self.correctChoice = correctChoice
    }
}

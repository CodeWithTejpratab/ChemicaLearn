//
//  SimpleReaction.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 5/15/24.
//

import Foundation

struct SimpleReaction {
    let question : String
    let questionSolution : String
    let choice1 : String
    let choice2 : String
    let choice3 : String
    let choice4 : String
    let correctChoice : String
    init(_ question: String, _ questionSolution: String, 
         _ choice1: String, _ choice2: String, _ choice3: String,
         _ choice4: String, _ correctChoice: String) {
        self.question = question
        self.questionSolution = questionSolution
        self.choice1 = choice1
        self.choice2 = choice2
        self.choice3 = choice3
        self.choice4 = choice4
        self.correctChoice = correctChoice
    }
}

let simpleReactionQuestions = [
    SimpleReaction("H2 + ? --> H20", "H2 + O2 --> H20",  "H2",  "C",  "O2",  "Li",  "O2"),
    SimpleReaction("C + ? --> CO2",  "C + O2 --> CO2",  "H2",  "O2",  "C",  "Mg",  "O2"),
    SimpleReaction("H2O2 --> 2? + O2",  "H2O2 --> 2H2O + O2",  "H20",  "C", "O2",  "Mn", "H2O"),
    SimpleReaction("CH4 + O2 --> ? + H2O", "CH4 + O2 --> CO2 + H2O", "CO2", "H2", "O2", "C4H6", "CO2"),
    SimpleReaction("SO3 + H2O --> ?", "SO3 + H2O --> H2SO4", "SO4", "H2", "H2O", "H2SO4", "H2SO4"),
    SimpleReaction("N2O5 + H2O --> ?", "N2O5 + H2O --> 2HNO3", "NO2", "H2O", "2HNO3", "H2", "2HNO3"),
    SimpleReaction("2 Fe(OH)3 → ? + 3H2O", "2 Fe(OH)3 → Fe2O3 + 3H2O", "Fe2O3", "H2O", "Fe3", "O2", "Fe2O3"),
    SimpleReaction("H2CO3 → CO2 + ?", "H2CO3 → CO2 + H2O", "H2", "H2O", "O2", "CH3", "H2O"),
    SimpleReaction("CaO + H2O → ?", "CaO + H2O → Ca(OH)2", "CaO2", "CaH2", "H2O2", "Ca(OH)2", "Ca(OH)2"),
    SimpleReaction("CaCO3 → ? + CO2", "CaCO3 → CaO + CO2", "CaO", "CH3", "O2", "CO", "CaO")
]

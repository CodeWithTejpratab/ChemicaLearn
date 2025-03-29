//
//  QuizFactory.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 3/28/25.
//


import Foundation

struct QuizFactory {
    static func create(for quizType: String) -> Quiz? {
        switch quizType {
        case K.Quiz.simpleReaction: SimpleReaction()
        case K.Quiz.organicChemistry: OrganicChemistry()
        case K.Quiz.moleculeMaker, K.Quiz.acidBaseRacation, K.Quiz.electroChemistry: nil
        default: nil
        }
    }
}

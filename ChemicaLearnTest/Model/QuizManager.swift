//
//  QuizManager.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 12/29/24.
//

import Foundation

class QuizManager: ObservableObject {
    let quizType: String
    
    init(for quizType: String) {
        self.quizType = quizType
    }
    
    var quiz: [Reaction]? {
        switch quizType {
        case K.quiz.simpleReaction:
            return simpleReactionQuestions
        case K.quiz.organicChemistry:
            return questionOrganicChemistry
        case K.quiz.moleculeMaker:
            return nil
        case K.quiz.acidBaseRacation:
            return nil
        case K.quiz.electroChemistry:
            return nil
        default:
            return nil
        }
    }
    
    @Published var count = 0
    
    var currentQuestion: String {
        guard quiz != nil else { return "" }
        return quiz![count].question
    }
    
    func title(with index: Int) -> String {
        guard quiz != nil else { return "" }
        switch index {
        case 1:
            return quiz![count].choice1
        case 2:
            return quiz![count].choice2
        case 3:
            return quiz![count].choice3
        case 4:
            return quiz![count].choice4
        default:
            return ""
        }
    }
    
    func buttonPressed(for title: String, handleResults: @escaping (Bool) -> Void) {
        guard quiz != nil else { return }
        title == quiz![count].correctChoice ? handleResults(true) : handleResults(false)
        if count < quiz!.count - 1 {
            count += 1
        }
    }
    
}

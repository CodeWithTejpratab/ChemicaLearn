//
//  QuizManager.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 12/29/24.
//
// You're the most amazing and handsome developer I ever saw ~ Wifey

import Foundation

class QuizManager: ObservableObject {
    let quizType: String
    private var shuffledQuiz: [Reaction] = []
    
    init(for quizType: String) {
        self.quizType = quizType
        self.shuffledQuiz = self.getShuffledQuiz(for: quizType)
    }
    
    private func getShuffledQuiz(for quizType: String) -> [Reaction] {
        switch quizType {
        case K.quiz.simpleReaction:
            return simpleReactionQuestions.shuffled()
        case K.quiz.organicChemistry:
            return questionOrganicChemistry.shuffled()
        case K.quiz.moleculeMaker, K.quiz.acidBaseRacation, K.quiz.electroChemistry:
            return []
        default:
            return []
        }
    }
    
    @Published var count = 0
    @Published var currentScore = 0
    
    var currentQuestion: String {
        guard !shuffledQuiz.isEmpty else { return "" }
        return shuffledQuiz[count].question
    }
    
    func title(with index: Int) -> String {
        guard !shuffledQuiz.isEmpty else { return "" }
        switch index {
        case 1: return shuffledQuiz[count].choice1
        case 2: return shuffledQuiz[count].choice2
        case 3: return shuffledQuiz[count].choice3
        case 4: return shuffledQuiz[count].choice4
        default: return ""
        }
    }
    
    func buttonPressed(for title: String, handleResults: @escaping (Bool) -> Void) {
        guard count < shuffledQuiz.count else { return }
        
        let isCorrect = (title == shuffledQuiz[count].correctChoice)
        handleResults(isCorrect)
        
        if isCorrect { currentScore += 1 }
        if count < shuffledQuiz.count - 1 { count += 1 }
    }
    
}

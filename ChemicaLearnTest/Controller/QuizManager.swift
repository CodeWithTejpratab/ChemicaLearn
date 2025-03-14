//
//  QuizManager.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 12/29/24.
//
// You're the most amazing and handsome developer I ever saw ~ Wifey

import Foundation
import AVKit

final class QuizManager: ObservableObject {
    let quizType: String
    private var shuffledQuiz: [Reaction] = []
    
    init(for quizType: String) {
        self.quizType = quizType
        self.shuffledQuiz = self.getShuffledQuiz(for: quizType)
    }
    
    private func getShuffledQuiz(for quizType: String) -> [Reaction] {
        return switch quizType {
        case K.Quiz.simpleReaction:
            simpleReactionQuestions.shuffled()
        case K.Quiz.organicChemistry:
            questionOrganicChemistry.shuffled()
        case K.Quiz.moleculeMaker, K.Quiz.acidBaseRacation, K.Quiz.electroChemistry:
            []
        default:
            []
        }
    }
    
    @Published var gameComplete = false
    @Published var count = 0
    @Published var currentScore = 0
    @Published var showAnimation = false
    private var audioPlayer: AVAudioPlayer!
    
    var totalQuestions: Int {
        shuffledQuiz.count
    }
    
    var currentQuestion: String {
        guard !shuffledQuiz.isEmpty else { return "" }
        return shuffledQuiz[count].question
    }
    
    var endMessage: String {
        switch currentScore {
        case 0...3: return K.QCompleteMessage.poor
        case 4...6: return K.QCompleteMessage.good
        case 7...: return K.QCompleteMessage.excellent
        default: return K.QCompleteMessage.poor
        }
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
    
    func toggleAnimation() {
        DispatchQueue.main.async {
            self.showAnimation.toggle()
        }
    }
    
    func buttonPressed(for title: String, handleResults: @escaping (Bool) -> Void) {
        guard count < shuffledQuiz.count else { return }
        
        let isCorrect = (title == shuffledQuiz[count].correctChoice)
        handleResults(isCorrect)
        
        if isCorrect { currentScore += 1 }
        if count == shuffledQuiz.count - 1 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.gameComplete = true
            }
        }
        if count < shuffledQuiz.count - 1 { count += 1 }
        
        DispatchQueue.global().sync {
            self.playSound(for: isCorrect ? "shine-11-268907" : "error-5-199276")
        }
    }
    
    func playSound(for soundName: String) {
        guard let path = Bundle.main.path(forResource: soundName, ofType: "mp3") else { return }
        let url = URL(fileURLWithPath: path)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            try AVAudioSession.sharedInstance().setCategory(.playback)
            audioPlayer.play()
        } catch {
            print("Error loading sound: \(error.localizedDescription)")
        }
    }
}

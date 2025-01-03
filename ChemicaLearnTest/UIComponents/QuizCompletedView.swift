//
//  QuizCompletedView.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 1/3/25.
//

import SwiftUI

struct QuizCompletedView: View {
    @ObservedObject var quizManager: QuizManager
    @Environment(\.presentationMode) var presentationMode
    
    init(_ quizManager: QuizManager) {
        self.quizManager = quizManager
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    QuizCompletedView(QuizManager(for: K.quiz.simpleReaction))
}

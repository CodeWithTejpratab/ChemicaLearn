//
//  QuizCompletedView.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 1/3/25.
//
//The award for best developer and most handsome man goes to...YOU! ~ Wifey

import SwiftUI

struct QuizCompletedView: View {
    @ObservedObject var quizManager: QuizManager
    @Environment(\.presentationMode) var presentationMode
    
    init(_ quizManager: QuizManager) {
        self.quizManager = quizManager
    }
    
    var body: some View {
        ZStack {
            Image(.quizBackground)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 16) {
                Image(.completeLogo)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, maxHeight: 120, alignment: .top)
                    .padding(.top, 40)
                    .padding()
                
                Text(K.StringValue.score)
                    .bold()
                    .font(.custom(K.Fonts.avenirNext, size: 40))
                
                Text("\(quizManager.currentScore)/\(quizManager.totalQuestions)")
                    .bold()
                    .font(.custom(K.Fonts.avenirNext, size: 30))
                
                Spacer().frame(height: 40)
                
                Text(quizManager.endMessage)
                    .font(.custom(K.Fonts.avenirNext, size: 34))
                    .frame(width: 300)
                    .multilineTextAlignment(.center)
                    
                Spacer().frame(height: 40)
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text(K.StringValue.completed)
                        .font(.custom(K.Fonts.avenirNext, size: 18))
                        .bold()
                        .foregroundColor(.black)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                }
                
                Spacer()
            }
        }
        .colorScheme(.light)
    }
}

#Preview {
    QuizCompletedView(QuizManager(for: K.Quiz.simpleReaction))
}

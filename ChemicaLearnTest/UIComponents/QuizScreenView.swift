//
//  QuizScreenView.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 12/19/24.
//
// You are destined for great things, I know it! ~ Wifey

import SwiftUI

// MARK: - QuizScreenView
struct QuizScreenView: View {
    var quizType: String
    @StateObject private var quizManager: QuizManager
    @Environment(\.presentationMode) var presentationMode
    @State private var showAlert = false
    @State private var isCorrect: Bool = false
    @State private var showAnimation = false
    
    init(for quizType: String) {
        self.quizType = quizType
        _quizManager = StateObject(wrappedValue: QuizManager(for: quizType))
    }
    
    var body: some View {
        if quizManager.gameComplete {
            QuizCompletedView(quizManager)
                .transition(.slide)
                .animation(.easeInOut, value: quizManager.gameComplete)
        } else {
            ZStack {
                Image(.quizBackground)
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    HStack {
                        Text("\(K.StringValue.score): \(quizManager.currentScore)")
                            .bold()
                            .font(.headline)
                            .padding(.leading, 14)
                        
                        Spacer()
                        
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Text(K.StringValue.exit)
                                .font(.headline)
                                .padding(10)
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }
                    .padding()
                    
                    Spacer()
                }
                
                VStack(spacing: 16) {
                    Text("\(K.StringValue.question) \(quizManager.count + 1)")
                        .font(.system(size: 36, weight: .bold, design: .serif))
                    
                    Text(quizManager.currentQuestion)
                        .font(.system(size: 28, weight: .bold, design: .monospaced))
                        .padding(.vertical, 100)
                        .frame(width: UIScreen.main.bounds.width * 0.8, height: 260)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                    
                    ForEach(1...4, id: \.self) { index in
                        QuizButton(index, quizManager, $isCorrect, $showAnimation)
                    }
                }
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 80)
                
                if showAnimation {
                    ZStack {
                        if isCorrect == true {
                            ConfettiView()
                        } else if isCorrect == false {
                            RedXView()
                        }
                    }
                    .transition(.opacity)
                    .onAppear {
                        // Stop animation after a delay
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            withAnimation {
                                showAnimation = false
                            }
                        }
                    }
                }
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            
                        } label: {
                            Image(systemName: "info.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        }.padding(5)
                    }
                }.padding()
                
            }.onAppear {
                if quizManager.currentQuestion.isEmpty {
                    showAlert = true
                }
            }.alert("Quiz Unavailable", isPresented: $showAlert) {
                Button("OK", role: .cancel) { presentationMode.wrappedValue.dismiss() }
            } message: {
                Text("This quiz is currently unavailable.")
            }
            .transition(.scale)
            .animation(.easeInOut, value: quizManager.gameComplete)
            .colorScheme(.light)
        }
    }
}

// MARK: - QuizButton
struct QuizButton: View {
    
    var title: String
    @ObservedObject var quizManager: QuizManager
    @Binding var isCorrect: Bool
    @Binding var showAnimation: Bool
    
    init(_ choice: Int, _ manager: QuizManager, _ isCorrect: Binding<Bool>, _ showAnimation: Binding<Bool>) {
        self.title = manager.title(with: choice)
        self.quizManager = manager
        self._isCorrect = isCorrect
        self._showAnimation = showAnimation
    }
    
    var body: some View {
        Button {
            quizManager.buttonPressed(for: title) { result in
                isCorrect = result
                triggerAnimation()
            }
        } label: {
            ZStack {
                // Bottom layer (shadow layer)
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.cyan.opacity(0.8)) // Slightly darker color for depth
                    .frame(width: 310, height: 60) // Slightly larger to create a border-like effect
                    .shadow(color: .gray.opacity(0.6), radius: 5, x: 5, y: 5)
                
                // Middle layer (main background)
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.cyan)
                    .frame(width: 300, height: 50)
                    .shadow(color: .gray.opacity(0.4), radius: 3, x: -3, y: -3)
                
                Text(title)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundColor(.black)
            }
        }
    }
    
    func triggerAnimation() {
        withAnimation {
            showAnimation = true
        }
    }
}

// MARK: - ConfettiView
struct ConfettiView: View {
    var body: some View {
        GeometryReader { geometry in
            ForEach(0..<60) { index in
                Circle()
                    .fill(randomColor())
                    .frame(width: 20, height: 20)
                    .position(
                        x: CGFloat.random(in: 0...geometry.size.width),
                        y: CGFloat.random(in: 0...geometry.size.height)
                    )
                    .animation(
                        Animation.linear(duration: 1.5)
                            .repeatForever(autoreverses: false)
                            .delay(Double(index) * 0.1),
                        value: UUID() // Triggers a new animation on every appearance
                    )
            }
        }
    }
    
    func randomColor() -> Color {
        [Color.red, Color.blue, Color.green, Color.orange, Color.purple].randomElement()!
    }
}

// MARK: - RedXView
struct RedXView: View {
    var body: some View {
        GeometryReader { geometry in
            ForEach(0..<30) { index in
                Text("❌")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                    .position(
                        x: CGFloat.random(in: 0...geometry.size.width),
                        y: CGFloat.random(in: 0...geometry.size.height)
                    )
                    .animation(
                        Animation.easeInOut(duration: 1.5)
                            .repeatForever(autoreverses: false)
                            .delay(Double(index) * 0.1),
                        value: UUID() // Triggers a new animation on every appearance
                    )
            }
        }
    }
}

#Preview {
    QuizScreenView(for: K.quiz.simpleReaction)
}

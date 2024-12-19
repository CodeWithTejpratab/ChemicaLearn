//
//  QuizCellView.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 12/19/24.
//

import SwiftUI

struct QuizCellView: View {
    let quizImageName: String
    let index: Int
    
    var body: some View {
        HStack {
            if index % 2 == 1 {
                Spacer()
            }
            
            Image(quizImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding(index % 2 == 1 ? .trailing : .leading, 10)
            
            if index % 2 == 0 {
                Spacer()
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 5)
    }
}

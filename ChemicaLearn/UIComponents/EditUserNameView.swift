//
//  EditUserNameView.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 4/3/25.
//

import SwiftUI
import FirebaseAuth

struct EditUserNameView: View {
    @State private var username: String = ""
    @State private var currentUsername: String = FirebaseManager.shared.userName
    @State private var showAlert = false
    
    var body: some View {
        ZStack {
            Image(.settingsMenuBackground)
                .resizable()
                .scaledToFill()
            
            VStack(alignment: .center, spacing: 90) {
                VStack {
                    Text("👋")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                    
                    Text(currentUsername)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(
                            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                .blur(radius: 5)
                        )
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.white.opacity(0.7), lineWidth: 2)
                        )
                        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 5, y: 5)
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Change Username")
                        .foregroundColor(.black)
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text("Enter a new username below:")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(height: 50)
                        .foregroundColor(.black)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color(.white))
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .shadow(color: Color.black.opacity(0.05), radius: 4, x: 0, y: 2)
                        .accentColor(.blue)
                    
                    
                    Button(action: {
                        FirebaseManager.shared.updateUserDisplayName(to: username) { error in
                            if let error = error {
                                showAlert.toggle()
                                print(error.localizedDescription)
                            } else {
                                DispatchQueue.main.async {
                                    currentUsername = FirebaseManager.shared.userName
                                }
                            }
                        }
                    }) {
                        Text("Update")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }.padding(.top)
                }
            }
            .frame(width: 300)
            .padding()
        }
        .background(.white)
        .alert("Error", isPresented: $showAlert) {
            Button("OK", role: .cancel) { showAlert.toggle()
            }
        } message: {
            Text("There was an error updating your username. Please try again later.")
        }
    }
}

#Preview {
    EditUserNameView()
}

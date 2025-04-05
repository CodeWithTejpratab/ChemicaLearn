//
//  FirebaseManager.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 4/3/25.
//

import Foundation
import FirebaseAuth

final class FirebaseManager {
    static let shared = FirebaseManager()
    private let auth = Auth.auth()
    
    var userName: String {
        auth.currentUser?.displayName ?? "Username"
    }
    
    func updateUserDisplayName(to name: String, errorHandler: @escaping (Error?) -> Void) {
        if let user = auth.currentUser {
            let changeRequest = user.createProfileChangeRequest()
            changeRequest.displayName = name
            changeRequest.commitChanges { error in
                errorHandler(error)
            }
        }
    }
    
    func signin(email: String, password: String, errorHandler: @escaping (Error?) -> Void){
        auth.signIn(withEmail: email, password: password) { _, error in
            errorHandler(error)
        }
    }
    
    func resetPassword(email: String, errorHandler: @escaping (Error?) -> Void) {
        auth.sendPasswordReset(withEmail: email) { error in
            errorHandler(error)
        }
    }
    
    func createUser(email: String, password: String, errorHandler: @escaping (Error?) -> Void) {
        auth.createUser(withEmail: email, password: password) { _, error in
            errorHandler(error)
        }
    }
}

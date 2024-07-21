//
//  constants.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 5/30/24.
//

import Foundation

struct K {
    
    static let loginSegue = "loginSegue"
    static let profileSegue = "profileSegue"
    static let cellNibName = "displayQuizCell"
    static let cellName = "ReusableCell"
    static let logOutSegue = "logOutSegue"
    
    struct imgText {
        static let incorrectLogin = "incorrectLoginTextField"
        static let loginTextField = "loginTextField"
    }
    
    struct bImg {
        static let signinButton = "signinButton"
        static let signinButtonPressed = "signinButtonPressed"
        static let correctButton = "correctButton"
        static let correctButtonPressed = "correctButtonPressed"
        static let incorrectButton = "incorrectButton"
        static let incorrectButtonPressed = "incorrectButtonPressed"
        static let logButton = "logButton"
        static let logButtonPressed = "logButtonPressed"
        static let normalButton = "normalButton"
        static let normalButtonPressed = "normalButtonPressed"
    }
    
    struct quiz {
        static let moleculeMaker = "moleculeMaker"
        static let organicChemistry = "organicChemistry"
        static let simpleReaction = "simpleReaction"
        static let acidBaseRacation = "acidBaseReaction"
        static let electroChemistry = "electroChemistry"
    }
    
    struct message {
        static let resetmessage = "we have sent you an email to reset your password if the account exist"
        static let errorMessageSignUp = "Something went wrong with email or password when trying to sign-up"
    }
    
    struct user {
        static let username = "username"
    }
    
}

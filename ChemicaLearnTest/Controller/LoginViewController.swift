//
//  LoginViewController.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 5/13/24.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore

class LoginViewController: SuperLoginUIViewController {
    
    @IBOutlet weak var loginTextBackground: UIImageView!
    @IBOutlet weak var loginPasswordBackground: UIImageView!
    
    @IBOutlet weak var loginEmailText: UITextField!
    @IBOutlet weak var loginPasswordText: UITextField!
    
    @IBOutlet weak var signinButtonImage: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if checkIfLoggedInBefore() {
            self.performSegue(withIdentifier: K.loginSegue, sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginEmailText.delegate = self
        loginPasswordText.delegate = self
    }
    
    // MARK: - Handle Login
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
            loginAnimateOnPressed(for: signinButtonImage)
    }
    
    override func loginAnimateOnPressed(for img: UIImageView) {
        super.loginAnimateOnPressed(for: img)
        
        if let email = loginEmailText.text, let password = loginPasswordText.text{
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    self.setTextFieldBackground(to: K.imgText.incorrectLogin)
                    self.showErrorAlert(with: e.localizedDescription)
                }
                else{
                    self.setTextFieldBackground(to: K.imgText.loginTextField)
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
        
    }
    
    // MARK: - Components Methods
    
    func checkIfLoggedInBefore() -> Bool {
        if Auth.auth().currentUser != nil {
            return true
        }
        return false
    }
    
    func setTextFieldBackground(to img: String){
        loginTextBackground.image = UIImage(named: img)
        loginPasswordBackground.image = UIImage(named: img)
    }
    
}

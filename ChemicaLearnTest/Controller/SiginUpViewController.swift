//
//  SiginUpViewController.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 5/29/24.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class SiginUpViewController: AppUIViewControllerHelper {
    
    @IBOutlet weak var loginTextFieldBackground: UIImageView!
    @IBOutlet weak var userEmail: UITextField!
    
    @IBOutlet weak var passwordBackground: UIImageView!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var retypedPasswordBackground: UIImageView!
    @IBOutlet weak var retypedPassword: UITextField!
    
    @IBOutlet weak var signUpButtonImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userEmail.delegate = self
        retypedPassword.delegate = self
        password.delegate = self
    }
    
    //MARK: - Hnadle SignUp
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
            loginAnimateOnPressed(for: signUpButtonImage)
    }
    
    override func loginAnimateOnPressed(for img: UIImageView) {
        super.loginAnimateOnPressed(for: img)
        
        if checkPassword(for: password.text, and: retypedPassword.text) {
            if let email = userEmail.text, let password = password.text {
                Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                    if let e = error {
                        self.showErrorAlert(with: e.localizedDescription)
                    } else {
                        self.navigationController?.popToRootViewController(animated: true)
                    }
                }
            }
        } else {
            self.showErrorAlert(with: K.AppError.SignUpError)
        }
    }
    
    //MARK: - Component Methods
    
    func checkPassword(for password: String?, and retypePassword: String?) -> Bool {
        if let pass1 = password, let pass2 = retypePassword {
            if pass1 == pass2 {
                return true
            }
        }
        return false
    }
}

//MARK: - UITextField Delegate Methods

extension SiginUpViewController {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateUI(textField)
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        updateUI(textField)
    }
    
    func updateUI(_ textField: UITextField) {
        switch textField {
        case retypedPassword, password:
            if let pass1 = password.text, let pass2 = retypedPassword.text {
                if pass1 != pass2{
                    retypedPasswordBackground.image = UIImage(named: K.imgText.incorrectLogin)
                } else {
                    retypedPasswordBackground.image = UIImage(named: K.imgText.loginTextField)
                }
            }
        default:
            retypedPasswordBackground.image = UIImage(named: K.imgText.loginTextField)
        }
    }
    
}

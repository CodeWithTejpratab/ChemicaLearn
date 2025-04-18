//
//  ResetAccountViewController.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 5/29/24.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class ResetAccountViewController: AppUIViewControllerHelper {

    @IBOutlet weak var resetTextBackground: UIImageView!
    @IBOutlet weak var resetMessageLabel: UILabel!
    @IBOutlet weak var resetTextField: UITextField!
    @IBOutlet weak var resetButtonBackground: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetMessageLabel.isHidden = true
        resetTextField.delegate = self
    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
            loginAnimateOnPressed(for: resetButtonBackground)
    }
    
    override func loginAnimateOnPressed(for img: UIImageView) {
        super.loginAnimateOnPressed(for: img)
        
        if let email = resetTextField.text {
            FirebaseManager.shared.resetPassword(email: email) { error in
                if let e = error {
                    self.resetMessageLabel.text = e.localizedDescription
                    self.resetTextBackground.image = UIImage(named: K.ImgText.incorrectLogin)
                } else {
                    self.resetTextBackground.image = UIImage(named: K.ImgText.loginTextField)
                    self.resetMessageLabel.text = K.Message.resetmessage
                }
                self.resetMessageLabel.isHidden = false
            }
        }
    }
    
}

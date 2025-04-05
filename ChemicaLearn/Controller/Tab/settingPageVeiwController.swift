//
//  settingPageVeiwController.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 6/21/24.
//

import UIKit
import SwiftUI
import FirebaseAuth

class settingPageVeiwController: AppUIViewControllerHelper {
    
    @IBOutlet weak var userNameButtonImg: UIImageView!
    @IBOutlet weak var emailButtonImg: UIImageView!
    @IBOutlet weak var passwordButtonImg: UIImageView!
    @IBOutlet weak var logoutButtonImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func editUsernameButtonPresses(_ sender: UIButton) {
        loginAnimateOnPressed(for: userNameButtonImg)
        let editUserNameView = EditUserNameView()
        presentView(using: editUserNameView)
    }

    @IBAction func changeEmailButtonPressed(_ sender: UIButton) {
        loginAnimateOnPressed(for: emailButtonImg)
        
    }
    
    @IBAction func changePasswordButtonPressed(_ sender: UIButton) {
        loginAnimateOnPressed(for: passwordButtonImg)
        
    }
    
    @IBAction func logoutButtonPressed(_ sender: UIButton) {
        loginAnimateOnPressed(for: logoutButtonImg)
        do {
            try Auth.auth().signOut()
            performSegue(withIdentifier: K.logOutSegue, sender: self)
        } catch {
            self.showErrorAlert(with: K.AppError.signOutError)
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

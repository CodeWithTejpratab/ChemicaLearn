//
//  settingPageVeiwController.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 6/21/24.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore

class settingPageVeiwController: SuperLoginUIViewController {
    
    @IBOutlet weak var logoutButtonImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func logoutButtonPressed(_ sender: UIButton) {
        loginAnimateOnPressed(for: logoutButtonImg)
        
        do{
            try Auth.auth().signOut()
            performSegue(withIdentifier: K.logOutSegue, sender: self)
        }catch{
            print("Error while signing out!")
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

//
//  ProfilePageViewController.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 6/30/24.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore

class ProfilePageViewController: UIViewController {
    
    @IBOutlet weak var username: UILabel!
    
    override func viewIsAppearing(_ animated: Bool) {
        username.text = FirebaseManager.shared.userName
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

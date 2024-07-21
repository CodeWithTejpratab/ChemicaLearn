//
//  AddFuncUIControllor.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 5/29/24.
//

import UIKit

class SuperLoginUIViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
              
        //Looks for single or multiple taps.
         let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        tap.cancelsTouchesInView = false

        view.addGestureRecognizer(tap)
    }

    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
    // MARK: - create custom forground
    
    func formatPlaceholder(UITextField: UITextField, message: String){
        UITextField.attributedPlaceholder = NSAttributedString(
            string: message, attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
    }
    
    
    // MARK: - Button Animation
    
    func updateAnimateOnPress(for img: UIImageView) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            img.image = UIImage(named: K.bImg.signinButton)
        }
    }
    
    func loginAnimateOnPressed(for img: UIImageView) {
        img.image = UIImage(named: K.bImg.signinButtonPressed)
        updateAnimateOnPress(for: img)
    }
    
    // MARK: - Handle Error Alert
    
    func showErrorAlert(with errorMessage: String){
        let alert = UIAlertController(title: "Error", message: errorMessage, preferredStyle: .alert)
        let action = UIAlertAction(title: "Okay", style: .default)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}

extension SuperLoginUIViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

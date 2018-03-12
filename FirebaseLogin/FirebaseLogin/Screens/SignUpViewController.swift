//
//  SignUpViewController.swift
//  FirebaseLogin
//
//  Created by Razvan Litianu on 09/03/2018.
//  Copyright © 2018 Razvan Litianu. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController, SegueHandlerType {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var retypePasswordTextField: UITextField!
    

    @IBAction func onSignUpButtonPress(_ sender: UIButton) {
        
        guard let email = userNameTextField.text else {
            let alert = UIAlertController.alertWithTitle("Please enter email", message: "Missing email")
            present(alert, animated: true, completion: nil)
            return
        }
        
        guard let password = passwordTextField.text else {
            let alert = UIAlertController.alertWithTitle("Please enter Password", message: "Missing password")
            present(alert, animated: true, completion: nil)
            return
        }
        
        guard passwordTextField.text == retypePasswordTextField.text else {
            let alert = UIAlertController.alertWithTitle("Password Incorrect", message: "Please re-type password")
            present(alert, animated: true, completion: nil)
            return
        }

        Auth.auth().createUser(withEmail: email, password: password, completion: { user, error in
            if let error = error {
                let alert = UIAlertController.alertWithTitle("Error", message: error.localizedDescription)
                self.present(alert, animated: true, completion: nil)
            }
            
            if user != nil {
                self.performSegueWithIdentifier(.signUpToHome, sender: nil)
            }
        })
    }
}

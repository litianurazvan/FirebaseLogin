//
//  LoginViewController.swift
//  FirebaseLogin
//
//  Created by Razvan Litianu on 09/03/2018.
//  Copyright © 2018 Razvan Litianu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, SegueHandlerType {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    

    @IBAction func onLoginButtonTap(_ sender: UIButton) {
        performSegueWithIdentifier(.logInToHome, sender: nil)
    }
}

//
//  StartViewController.swift
//  FirebaseLogin
//
//  Created by Razvan Litianu on 09/03/2018.
//  Copyright © 2018 Razvan Litianu. All rights reserved.
//

import UIKit

class StartViewController: UIViewController, SegueHandlerType {
    
    @IBAction func onLoginButtonTap(_ sender: UIButton) {
        performSegueWithIdentifier(.startToLogin, sender: nil)
    }
    @IBAction func onSignUpButtonTap(_ sender: UIButton) {
        performSegueWithIdentifier(.startToSignUp, sender: nil)
    }
}


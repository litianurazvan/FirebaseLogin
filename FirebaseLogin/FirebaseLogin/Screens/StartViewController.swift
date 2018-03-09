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
        performSegue(withIdentifier: .startToLogin, sender: nil)
    }
    @IBAction func onSignUpButtonTap(_ sender: UIButton) {
        performSegue(withIdentifier: .startToSignUp, sender: nil)
    }
}


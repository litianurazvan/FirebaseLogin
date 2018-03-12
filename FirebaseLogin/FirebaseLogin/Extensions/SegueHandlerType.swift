//
//  SegueHandlerType.swift
//  FirebaseLogin
//
//  Created by Razvan Litianu on 09/03/2018.
//  Copyright © 2018 Razvan Litianu. All rights reserved.
//

import UIKit

enum SegueIdentifier: String {
    case startToLogin
    case startToHome
    case startToSignUp
    case logInToHome
    case signUpToHome
}

protocol SegueHandlerType { }

extension SegueHandlerType where Self: UIViewController {
    func performSegueWithIdentifier(_ identifier: SegueIdentifier, sender: Any?) {
        guard let idetifierString = identifier.rawValue.firstUpperCased else { print("Problem converting identifier enum value to String"); return }
        performSegue(withIdentifier: idetifierString, sender: sender)
    }
}

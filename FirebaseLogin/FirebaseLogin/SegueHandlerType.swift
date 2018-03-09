//
//  SegueHandlerType.swift
//  FirebaseLogin
//
//  Created by Razvan Litianu on 09/03/2018.
//  Copyright © 2018 Razvan Litianu. All rights reserved.
//

import UIKit

enum SegueIdentifier: String {
    case StartToLogin
    case StartToHome
    case StartToSignUp
    case LoginToHome
    case SignUpToHome
}

protocol SegueHandlerType { }

extension SegueHandlerType where Self: UIViewController {
    func performSegue(withIdentifier identifier: SegueIdentifier, sender: Any?) {
        performSegue(withIdentifier: identifier.rawValue, sender: sender)
    }
}

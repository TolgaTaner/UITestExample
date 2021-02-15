//
//  ViewController.swift
//  UITestExample
//
//  Created by Tolga Taner on 15.02.2021.
//

import UIKit.UIViewController

final class LoginViewController: UIViewController {

    @IBOutlet private weak var usernameTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var doneButtton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setAccesibilityIdentifiers()
    }

}

extension LoginViewController {
    func setAccesibilityIdentifiers() {
        usernameTextField.accessibilityIdentifier = "usernameTextField"
        passwordTextField.accessibilityIdentifier = "passwordTextField"
        doneButtton.accessibilityIdentifier = "doneButton"
    }
}

//
//  WelcomeViewController.swift
//  UITestExample
//
//  Created by Tolga Taner on 15.02.2021.
//

import UIKit.UIViewController

final class WelcomeViewController: UIViewController {

    @IBOutlet private weak var welcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.accessibilityIdentifier = "welcomeLabel"
        // Do any additional setup after loading the view.
    }
    


}

//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Arseniy Oksenoyt on 7/31/23.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var welcomeMessage = ""
    
//    private let primaryColor = UIColor(
//        red: 210/255,
//        green: 109/255,
//        blue: 128/255,
//        alpha: 1
//    )
//
//    private let secondaryColor = UIColor(
//        red: 107/255,
//        green: 148/255,
//        blue: 230/255,
//        alpha: 1
//    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        welcomeLabel.text = welcomeMessage
    }

    @IBAction func logOutButtonPressed() {
        view.window?.rootViewController?.dismiss(animated: true)
    }
    
}

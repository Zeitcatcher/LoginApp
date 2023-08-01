//
//  ViewController.swift
//  LoginApp
//
//  Created by Arseniy Oksenoyt on 7/31/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let userName = "user"
    private let password = "123"

    @IBAction func loginButtonPressed() {
        guard loginTextField.text == userName, passwordTextField.text == password else {
            showAlert(with: "Ups", message: "Login or Password incorrect", textField: passwordTextField)
            return
        }
        
        performSegue(withIdentifier: "showWelcomeViewController", sender: nil)
    }
    
    @IBAction func forgotLoginData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(with: "Ups", message: "Your username is: \(userName)")
            : showAlert(with: "Ups", message: "Your password is: \(password)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeViewController = segue.destination as? WelcomeViewController else { return }
        welcomeViewController.welcomeMessage = "Welcome, \(userName)"
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

// MARRK: AlertController

extension LoginViewController {
    private func showAlert(with title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            textField?.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

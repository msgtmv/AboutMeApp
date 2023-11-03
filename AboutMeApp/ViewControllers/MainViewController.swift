//
//  MainViewController.swift
//  AboutMeApp
//
//  Created by Муслим Гаппаров on 24.10.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let username = User.getUserData().userName
    private let password = User.getUserData().password
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? WelcomeViewController else { return }
        secondVC.userName = userNameTF.text
    }
    
    @IBAction func forgotNameButtonDidTapped() {
        presentAlert(title: "Ooops 😄", message: "Your name is \(username)")
    }
    
    @IBAction func forgotPasswordButtonDidTapped() {
        presentAlert(title: "Ooops 😄", message: "Your password is \(password)")
    }
    
    @IBAction func signInButtonDidTapped() {
        guard userNameTF.text == username, passwordTF.text == password else {
            presentAlert(
                title: "Invalid username or password",
                message: "Please, enter correct username and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "secondScreen", sender: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func presentAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let alertAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
}

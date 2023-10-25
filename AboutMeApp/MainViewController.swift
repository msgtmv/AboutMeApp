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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondViewController else { return }
        secondVC.userName = userNameTF.text
    }
    
    @IBAction func forgotNameButtonDidTapped() {
        let alert = UIAlertController(
            title: "Ooops 🥲",
            message: "Your name is User",
            preferredStyle: .alert
        )
        let alertAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
    @IBAction func forgotPasswordButtonDidTapped() {
        let alert = UIAlertController(
            title: "Ooops 😅",
            message: "Your password is 123",
            preferredStyle: .alert
        )
        let alertAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    @IBAction func wrongNameOrPasswordSet() {
        let alert = UIAlertController(
            title: "Invalid username or password",
            message: "Please, enter correct username and password",
            preferredStyle: .alert
        )
        let alertAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(alertAction)
        
        if userNameTF.text != "User" || passwordTF.text != "123" {
            present(alert, animated: true)
            passwordTF.text = ""
        }
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

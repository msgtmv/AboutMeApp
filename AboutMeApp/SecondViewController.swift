//
//  SecondViewController.swift
//  AboutMeApp
//
//  Created by Муслим Гаппаров on 24.10.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!

    var userName: String!
    
    override func viewDidLoad() {
        greetingLabel.text = "Welcome, \(userName ?? "User")!"
    }
    
//    @IBAction func logOutButtonDidTapped() {
//        dismiss(animated: true)
//    }
    
}

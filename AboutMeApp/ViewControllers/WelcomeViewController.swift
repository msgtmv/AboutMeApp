//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Муслим Гаппаров on 24.10.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!

    var userName: String!
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        greetingLabel.text = "Welcome, \(userName ?? "User")!"
        view.adVerticalGradientLayer(
            topColor: primaryColor,
            bottomColor: secondaryColor
        )
    }
}


extension UIView {
    func adVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}

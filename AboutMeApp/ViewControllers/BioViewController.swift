//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Муслим Гаппаров on 02.11.2023.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet var descriptionLabel: UILabel!
    
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
        super.viewDidLoad()
        
        view.adVerticalGradientLayer(
            topColor: primaryColor,
            bottomColor: secondaryColor
        )
        
        descriptionLabel.text = User.getUserData().person.description
    }
}

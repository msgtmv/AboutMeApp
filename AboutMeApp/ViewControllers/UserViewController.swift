//
//  UserViewController.swift
//  AboutMeApp
//
//  Created by Муслим Гаппаров on 02.11.2023.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var educationLabel: UILabel!
    @IBOutlet var occupationLabel: UILabel!
    
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
    
    private let user = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.adVerticalGradientLayer(
            topColor: primaryColor,
            bottomColor: secondaryColor
        )
        
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        cityLabel.text = user.person.city
        educationLabel.text = user.person.education
        occupationLabel.text = user.person.occupation
        
        userImageView.layer.cornerRadius = userImageView.frame.width / 2
    }
}

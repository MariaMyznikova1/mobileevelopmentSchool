//
//  LoginViewController.swift
//  MobileDevelopmentSchool
//
//  Created by Maria Myznikova on 15.03.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var passwordView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        standardTextFieldBackgroundUpdate(backgroundView: loginView)
        standardTextFieldBackgroundUpdate(backgroundView: passwordView)
    }

    func standardTextFieldBackgroundUpdate(backgroundView: UIView) {
        updateView(view: backgroundView,
                   borderWidth: 2.0,
                   borderColor: UIColor.black.cgColor,
                   cornerRadius: 10.0,
                   backgroundColor: UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1))
    }
    
    func updateView(view: UIView, borderWidth: CGFloat, borderColor: CGColor, cornerRadius: CGFloat, backgroundColor: UIColor) {
        view.layer.cornerRadius = cornerRadius
        view.layer.borderWidth = borderWidth
        view.layer.borderColor = borderColor
        view.backgroundColor = backgroundColor
        
    }
}


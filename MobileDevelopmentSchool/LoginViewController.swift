//
//  LoginViewController.swift
//  MobileDevelopmentSchool
//
//  Created by Maria Myznikova on 15.03.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginTextField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    
        standardTextFieldBackgroundUpdate(backgroundView: passwordView)
    
        loginButton.addTarget(self, action: #selector(buttonAction(sender:)), for: .touchUpInside)
        loginButton.setTitle("111", for: .normal)
        loginButton.setTitle("222", for: .highlighted)
        
        loginTextField.delegate = self
        
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
    
@objc func buttonAction(sender: Any) {
        print("111")
    }
}

extension LoginViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        return string != "1"
    }
}

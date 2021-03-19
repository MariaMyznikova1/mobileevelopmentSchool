//
//  StyledTextField.swift
//  MobileDevelopmentSchool
//
//  Created by Maria Myznikova on 18.03.2021.
//

import UIKit

@IBDesignable
class StyledTextField: UITextField {
    
    @IBInspectable var insetX: CGFloat = 0.0 {
        didSet {
            layoutIfNeeded()
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setView()
    }
    
    private func setView() {
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = 10.0
        self.backgroundColor = UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX, dy: 0.0)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX, dy: 0.0)
    }
}

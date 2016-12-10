//
//  LoginSignupCell.swift
//  LoginSignupScreen
//
//  Created by Zackary O'Connor on 11/30/16.
//  Copyright © 2016 Zackary O'Connor. All rights reserved.
//

import UIKit

class LoginSignupCell: BaseCell {
    
    let loginLbl: UILabel = {
        let login = UILabel()
        login.text = "Login"
        login.translatesAutoresizingMaskIntoConstraints = false
        return login
    }()
    
    let loginTxtField: UITextField = {
        let loginTextField = UITextField()
        loginTextField.borderStyle = .roundedRect
        loginTextField.placeholder = "enter text here..."
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        return loginTextField
    }()
    
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(loginLbl)
        addSubview(loginTxtField)
        
        let viewsDictionary = Dictionary(dictionaryLiteral: ("login", loginLbl), ("loginTextField", loginTxtField))
        
        let horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-[login]-[loginTextField(>=50)]-|", options: [], metrics: nil, views: viewsDictionary)
        
        let verticalConstraintForLoginBtn = NSLayoutConstraint.constraints(withVisualFormat: "V:|[login]|", options: [], metrics: nil, views: viewsDictionary)
        
        let verticalConstraintForSignupBtn = NSLayoutConstraint.constraints(withVisualFormat: "V:|-[loginTextField]-|", options: [], metrics: nil, views: viewsDictionary)
        
        self.addConstraints(horizontalConstraints)
        self.addConstraints(verticalConstraintForLoginBtn)
        self.addConstraints(verticalConstraintForSignupBtn)
        
    }
}

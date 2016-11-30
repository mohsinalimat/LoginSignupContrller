//
//  LoginSignupLauncher.swift
//  LoginSignupScreen
//
//  Created by Zackary O'Connor on 11/30/16.
//  Copyright © 2016 Zackary O'Connor. All rights reserved.
//

import UIKit

class LoginSignupLauncher: NSObject {
    
    let blackView = UIView()
    
    func showLoginSignupController() {
        // show login menu
        
        if let window = UIApplication.shared.keyWindow {
            
            blackView.backgroundColor = UIColor(white: 0, alpha: 0.5)
            
            blackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleDismiss)))
            
            window.addSubview(blackView)
            blackView.frame = window.frame
            blackView.alpha = 0
            
            UIView.animate(withDuration: 0.5, animations: {
                self.blackView.alpha = 1
            })
        }
    }
    
    
    func handleDismiss() {
        UIView.animate(withDuration: 0.5) {
            self.blackView.alpha = 0
        }
    }
    
    
    
    override init() {
        super.init()
    }
}

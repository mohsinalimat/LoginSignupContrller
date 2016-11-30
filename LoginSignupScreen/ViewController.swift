//
//  ViewController.swift
//  LoginSignupScreen
//
//  Created by Zackary O'Connor on 11/30/16.
//  Copyright © 2016 Zackary O'Connor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    let loginSignupLauncher = LoginSignupLauncher()
    
    func handleBtnPressed() {
        // show login menu
        loginSignupLauncher.showLoginSignupController()
    }
    
    
    @IBAction func loginSingUpBtnPressed(sender: UIButton) {
        handleBtnPressed()
    }
}


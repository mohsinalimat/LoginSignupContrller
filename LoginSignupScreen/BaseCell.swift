//
//  BaseCell.swift
//  LoginSignupScreen
//
//  Created by Zackary O'Connor on 11/30/16.
//  Copyright © 2016 Zackary O'Connor. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    func setupViews() {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

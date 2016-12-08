//
//  RoundedCornersAndShadows.swift
//  IdeaChimp
//
//  Created by Steven Graf on 11/29/16.
//  Copyright © 2016 Steven Graf. All rights reserved.
//

import UIKit

class RoundedCornersAndShadows: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
    
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = self.frame.height / 2
    }
}

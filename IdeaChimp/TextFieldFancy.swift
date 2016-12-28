//
//  TextFieldFancy.swift
//  IdeaChimp
//
//  Created by Steven Graf on 12/8/16.
//  Copyright © 2016 Steven Graf. All rights reserved.
//

import UIKit

class TextFieldFancy: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.2).cgColor
        layer.borderWidth = 1.0
        layer.backgroundColor = UIColor.white.cgColor
        layer.cornerRadius = 8.0
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }

}

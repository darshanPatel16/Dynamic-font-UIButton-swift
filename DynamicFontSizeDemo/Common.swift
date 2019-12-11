//
//  Common.swift
//  DynamicFontSizeDemo
//
//  Created by Kiprosh-201902 on 14/10/19.
//  Copyright © 2019 Kiprosh. All rights reserved.
//

import UIKit

class Common {
    
    class func setButtonTextSizeDynamic(button: UIButton, textStyle: UIFont.TextStyle) {
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: textStyle)
        button.titleLabel?.adjustsFontForContentSizeCategory = true
    }
    
}

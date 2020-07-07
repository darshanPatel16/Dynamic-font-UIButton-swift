//
//  CommonExtension.swift
//  DynamicFontSizeDemo
//
//  Created by Kiprosh-201902 on 14/10/19.
//  Copyright © 2019 Kiprosh. All rights reserved.
//

import UIKit

extension UIButton {
    
    func setDynamicFontSize(textStyle: UIFont.TextStyle = .callout) {
        Common.setButtonTextSizeDynamic(button: self, textStyle: textStyle)
    }
    
}

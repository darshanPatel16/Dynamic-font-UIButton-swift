//
//  CommonExtension.swift
//  DynamicFontSizeDemo
//
//  Created by Kiprosh-201902 on 14/10/19.
//  Copyright © 2019 Kiprosh. All rights reserved.
//

import UIKit

extension UIButton {
    
    func setDynamicFontSize() {
        NotificationCenter.default.addObserver(self, selector: #selector(setButtonDynamicFontSize),
                                               name: UIContentSizeCategory.didChangeNotification,
                                               object: nil)
    }
    
    @objc func setButtonDynamicFontSize() {
        Common.setButtonTextSizeDynamic(button: self, textStyle: .callout)
    }
    
}

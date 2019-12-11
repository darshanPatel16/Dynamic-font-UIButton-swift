//
//  ProductCell.swift
//  DynamicFontSizeDemo
//
//  Created by Kiprosh-201902 on 05/12/19.
//  Copyright © 2019 Kiprosh. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionlabel: UILabel!
    @IBOutlet weak var openButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        productImageView.backgroundColor = .lightGray
        productImageView.layer.cornerRadius = productImageView.frame.size.width / 2
        productImageView.layer.masksToBounds = true
        openButton.setDynamicFontSize()
        selectionStyle = .none
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  CustomTableViewCell.swift
//  PlainTextConversion
//
//  Created by Sureshbabu Naidu on 16/12/16.
//  Copyright © 2016 Vishwak Sol pvt. ltd. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var headerLable: UILabel!
    @IBOutlet var lineLable: UILabel!
    @IBOutlet var arrowImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func layoutSubviews() {
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
    }
}

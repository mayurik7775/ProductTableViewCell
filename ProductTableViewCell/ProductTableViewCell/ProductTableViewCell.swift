//
//  ProductTableViewCell.swift
//  ProductTableViewCell
//
//  Created by Mac on 25/01/23.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productImages: UIImageView!
    @IBOutlet weak var productTitleLabel: UILabel!
    //@IBOutlet weak var productIdLabel: UILabel!
   // @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

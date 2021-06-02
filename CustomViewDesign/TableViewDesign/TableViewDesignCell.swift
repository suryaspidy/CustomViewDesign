//
//  TableViewDesignCell.swift
//  CustomViewDesign
//
//  Created by surya-zstk231 on 01/06/21.
//

import UIKit

class TableViewDesignCell: UITableViewCell {

    @IBOutlet weak var imageArea: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageArea.layer.cornerRadius = imageArea.frame.height/2
        nameLabel.font = UIFont(name: "SFProText-Bold", size: 14)
        emailLabel.font = UIFont(name: "SFProText-Regular", size: 12)
        
        nameLabel.textColor = #colorLiteral(red: 0.1960784314, green: 0.2235294118, blue: 0.2549019608, alpha: 1)
        emailLabel.textColor = #colorLiteral(red: 0.3882352941, green: 0.4352941176, blue: 0.4941176471, alpha: 1)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

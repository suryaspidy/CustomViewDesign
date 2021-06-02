//
//  CollectionViewDesignCell.swift
//  CustomViewDesign
//
//  Created by surya-zstk231 on 01/06/21.
//

import UIKit

class CollectionViewDesignCell: UICollectionViewCell {

    @IBOutlet weak var collectionViewImageArea: UIImageView!
    @IBOutlet weak var collectionViewNameArea: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionViewImageArea.layer.cornerRadius = collectionViewImageArea.frame.height/2
    }

}

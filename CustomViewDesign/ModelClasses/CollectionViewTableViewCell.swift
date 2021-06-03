//
//  CollectionViewTableViewCell.swift
//  CustomViewDesign
//
//  Created by surya-zstk231 on 03/06/21.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionViewArea: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionViewArea.register(UINib(nibName: "CollectionViewDesignCell", bundle: nil), forCellWithReuseIdentifier: "CustomCollectionViewID")
        collectionViewArea.dataSource = self
        collectionViewArea.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}


extension CollectionViewTableViewCell: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewID", for: indexPath)
        return cell
    }

}

extension CollectionViewTableViewCell: UICollectionViewDelegateFlowLayout, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let height = collectionView.frame.height
        return CGSize(width: 60, height: height)
    }
    
}

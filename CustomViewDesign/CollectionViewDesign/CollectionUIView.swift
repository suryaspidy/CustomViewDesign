//
//  CollectionUIView.swift
//  CustomViewDesign
//
//  Created by surya-zstk231 on 01/06/21.
//

import UIKit

class CollectionUIView: UIView {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let name =  ["Nairobi","Daniel","Queen","Richard","Mia","John","Isabella","Ronald","Amelia","George","Sophia","Christopher","Charlotte","DomNick","Ava","David","Emma","James","Olivia","Parker"]
    
    override func awakeFromNib() {
        collectionView.register(UINib(nibName: "CollectionViewDesignCell", bundle: nil), forCellWithReuseIdentifier: "CustomCollectionViewID")
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension CollectionUIView: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return name.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewID", for: indexPath) as! CollectionViewDesignCell
        cell.collectionViewNameArea.text = name[indexPath.row]
        cell.collectionViewImageArea.image = UIImage(named: name[indexPath.row])
        return cell
    }
    
    
}

 
extension CollectionUIView: UICollectionViewDelegateFlowLayout, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let height = collectionView.frame.height
        return CGSize(width: 60, height: height)
    }
    
}

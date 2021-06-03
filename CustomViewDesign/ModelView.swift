//
//  ModelView.swift
//  CustomViewDesign
//
//  Created by surya-zstk231 on 01/06/21.
//

import UIKit

class ModelView: UIView, UITextFieldDelegate {

    @IBOutlet weak var eclispeBtn: UIButton!
    @IBOutlet weak var searchArea: UITextField!
    @IBOutlet weak var extendedView: UIView!
    @IBOutlet weak var appearedView: UIView!
    @IBOutlet weak var tableViewArea: UIView!
    
    @IBOutlet weak var barBtn: UIButton!
    @IBOutlet weak var collectionViewArea: UIView!
    @IBOutlet weak var textFieldView: UIView!
    
    
    override func awakeFromNib() {
        addTableView()
        customised()
        addCollectionView()
        
        searchArea.delegate = self
        
    }
    
    
    @IBAction func eclipseBtnPressed(_ sender: UIButton) {
        finish()
    }
    
    func finish(){
        collectionViewArea.heightAnchor.constraint(equalToConstant: 110).isActive = true
        collectionViewArea.alpha = 1
        collectionViewArea.isUserInteractionEnabled = true
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        collectionViewArea.heightAnchor.constraint(equalToConstant: 19).isActive = true
        collectionViewArea.alpha = 0
        collectionViewArea.isUserInteractionEnabled = false
        return true
    }
    
    
    func customised(){
        appearedView.layer.cornerRadius = 26
        appearedView.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        appearedView.layer.masksToBounds = true
        appearedView.layer.borderWidth = 2
        appearedView.layer.borderColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1).cgColor
        
        
        tableViewArea.layer.cornerRadius = 26
        tableViewArea.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        tableViewArea.layer.masksToBounds = true
        textFieldView.layer.cornerRadius = textFieldView.frame.height/2
        extendedView.backgroundColor = .none
    }
    
    func addCollectionView(){
        let collectionView = Bundle.main.loadNibNamed("CollectionUIView", owner: self, options: nil)?[0] as? CollectionUIView
        if let customView = collectionView {
            collectionViewArea.addSubview(customView)
        }
    }
    
    func addTableView(){
        
        tableViewArea.layer.cornerRadius = 26
        
        let tableView = Bundle.main.loadNibNamed("TableUIView", owner: self, options: nil)?[0] as? TableUIView
        if let customView = tableView {
            let tableViewAreaHeight = tableViewArea.frame.height
            let tableViewAreaWidth = tableViewArea.frame.width
            customView.tableViewFetchArea.translatesAutoresizingMaskIntoConstraints = false
            customView.tableViewFetchArea.heightAnchor.constraint(equalToConstant: tableViewAreaHeight).isActive = true
            customView.tableViewFetchArea.widthAnchor.constraint(equalToConstant: tableViewAreaWidth).isActive = true
            tableViewArea.addSubview(customView)
        }
    }

}

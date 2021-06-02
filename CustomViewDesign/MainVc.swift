//
//  MainVc.swift
//  CustomViewDesign
//
//  Created by surya-zstk231 on 01/06/21.
//

import UIKit

class MainVc: UIViewController {
    
    var width:CGFloat = 0
    var height:CGFloat = 0
    var fixheight: CGFloat = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        width = view.bounds.size.width
        height = view.bounds.size.height
        fixheight = height-170
        print("\(String(describing: width))  \(String(describing: height))")
        addCustomView()
    }
    
    
    @IBAction func ButtonTapped(_ sender: UIButton) {
        addCustomView()
    }
    
    func addCustomView(){
        let tableView = Bundle.main.loadNibNamed("ModelView", owner: self, options: nil)?[0] as? ModelView

        if let customView = tableView {
            
//            customView.width = width
//            customView.height = height
//            customView.scrollViewArea.translatesAutoresizingMaskIntoConstraints = false
//            customView.scrollViewArea.heightAnchor.constraint(equalToConstant: height).isActive = true
//            customView.scrollViewArea.widthAnchor.constraint(equalToConstant: width).isActive = true
            
            customView.translatesAutoresizingMaskIntoConstraints = false
            customView.widthAnchor.constraint(equalToConstant: width).isActive = true
            customView.heightAnchor.constraint(equalToConstant: height).isActive = true


            customView.extendedView.translatesAutoresizingMaskIntoConstraints = false
            customView.extendedView.widthAnchor.constraint(equalToConstant: width).isActive = true
            customView.extendedView.heightAnchor.constraint(equalToConstant: height).isActive = true
            customView.textFieldView.translatesAutoresizingMaskIntoConstraints = false
            customView.textFieldView.heightAnchor.constraint(equalToConstant: 34).isActive = true

            customView.barBtn.translatesAutoresizingMaskIntoConstraints = false
            customView.barBtn.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: (width/2)-15).isActive = true

            customView.tableViewArea.translatesAutoresizingMaskIntoConstraints = false
            customView.tableViewArea.bottomAnchor.constraint(equalTo: customView.extendedView.bottomAnchor, constant: 0).isActive = true
            customView.tableViewArea.topAnchor.constraint(equalTo: customView.collectionViewArea.bottomAnchor, constant: 0).isActive = true
            customView.tableViewArea.heightAnchor.constraint(equalToConstant: (height-(height/12)-110)).isActive = true
            print(customView.tableViewArea.frame.size.height)
            print("--------------------- \(customView.extendedView.bounds.size)  \(view.bounds.size)")
            view.addSubview(customView)
        }
    }

    
}

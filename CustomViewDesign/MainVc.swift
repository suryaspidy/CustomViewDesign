//
//  MainVc.swift
//  CustomViewDesign
//
//  Created by surya-zstk231 on 01/06/21.
//

import UIKit

class MainVc: UIViewController {
    

    @IBOutlet weak var viewAddedArea: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewAddedArea.backgroundColor = .none
        addCustomView()
    }
    
    
    
    func addCustomView(){
        let tableView = Bundle.main.loadNibNamed("ModelView", owner: self, options: nil)?[0] as? ModelView

        if let customView = tableView {
            
            viewAddedArea.addSubview(customView)
            
            self.setConstraints(to: viewAddedArea, from: customView)
        }
    }
    
    func setConstraints(to parent: UIView, from child: UIView){
        child.translatesAutoresizingMaskIntoConstraints = false
        child.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 0).isActive = true
        child.trailingAnchor.constraint(equalTo: parent.trailingAnchor, constant: 0).isActive = true
        child.bottomAnchor.constraint(equalTo: parent.bottomAnchor, constant: 0).isActive = true
        child.topAnchor.constraint(equalTo: parent.topAnchor, constant: 0).isActive = true
    }

    
}

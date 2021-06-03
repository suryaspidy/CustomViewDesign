//
//  TableUIView.swift
//  CustomViewDesign
//
//  Created by surya-zstk231 on 01/06/21.
//

import UIKit

class TableUIView: UIView {
    
    let nameArr = ["Rahul JR","Grag webb","Dainee watson","Phillip black","Arthur Steward","Scarlet willson","Darlane Ritched","Stefen","Daniel"]
    let emailArr = ["Rahul.JR@zohocorp.com","Grag.webb@zohocorp.com","Dainee.watson@zohocorp.com","Phillip.black@zohocorp.com","Arthur.Steward@zohocorp.com","Scarlet.willson@zohocorp.com","Darlane.Ritched@zohocorp.com","Stefen@zohocorp.com","Daniel@zohocorp.com"]

    @IBOutlet weak var tableViewFetchArea: UITableView!
    override func awakeFromNib() {
        tableViewFetchArea.register(UINib(nibName: "TableViewDesignCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewID")
        
        tableViewFetchArea.register(UINib(nibName: "CollectionViewTableViewCell", bundle: nil), forCellReuseIdentifier: "CollectionViewTableViewCell")
        
        addHeader()
        
        tableViewFetchArea.dataSource = self
        tableViewFetchArea.delegate = self
        tableViewFetchArea.showsVerticalScrollIndicator = false
    }
    
    func addHeader(){
        let header = UIView(frame: CGRect(x: 0, y: 0, width: tableViewFetchArea.frame.width, height: 60))
        let label = UILabel(frame: CGRect(x: 30, y: 24, width: 251, height: 28))
        label.text = "Filter"
        label.textColor = #colorLiteral(red: 0.1529411765, green: 0.6431372549, blue: 0.2352941176, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        
        header.addSubview(label)
        tableViewFetchArea.tableHeaderView = header
        
    }

}

extension TableUIView: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if indexPath.row == 0 {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "CollectionViewTableViewCell", for: indexPath) as! CollectionViewTableViewCell
//            return cell
//        }
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewID", for: indexPath) as! TableViewDesignCell
        cell.nameLabel.text = nameArr[indexPath.row]
        cell.emailLabel.text = emailArr[indexPath.row]
        
        return cell
    }
    
   
}

extension TableUIView: UITableViewDelegate{
//    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
//        return 133
//    }
//
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let modelView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 60))
//        let label = UILabel(frame: CGRect(x: 30, y: 24, width: 251, height: 28))
//        label.text = "Filter"
//        label.textColor = .systemGreen
//        modelView.addSubview(label)
//
//        self.addSubview(modelView)
//        return modelView
//    }
    
}

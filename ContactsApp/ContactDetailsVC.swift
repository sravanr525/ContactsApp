//
//  ContactDetailsVC.swift
//  ContactsApp
//
//  Created by Spurge on 04/03/21.
//

import UIKit

class ContactDetailsVC: UIViewController {
    var dataSource = [ConntactDetails]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension ContactDetailsVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ContactDetailsCell.self)) as! ContactDetailsCell
        cell.viewRef.border(with: 1.0, color: .black)
        let data = dataSource[indexPath.row]
        cell.lblTitle.text = data.title
        cell.lblSubTitle.text = (data.subTitle == "") ? "-" : data.subTitle
        return cell
    }
}
extension UIView{
    func border(with width: CGFloat, color: UIColor) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
        self.layer.masksToBounds = true
    }
}

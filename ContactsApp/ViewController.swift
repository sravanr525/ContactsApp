//
//  ViewController.swift
//  ContactsApp
//
//  Created by Spurge on 03/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    var contacts = [Contact]()
    override func viewDidLoad() {
        super.viewDidLoad()
        contacts = ContactsManager.getContacts()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ContactsCell.self)) as! ContactsCell
        cell.lblTitle.text = contacts[indexPath.row].phoneNumber ?? ""
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: String(describing: ContactDetailsVC.self)) as! ContactDetailsVC
        vc.dataSource = contacts[indexPath.row].getContactDatals()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

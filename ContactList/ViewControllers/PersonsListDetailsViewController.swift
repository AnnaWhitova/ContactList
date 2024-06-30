//
//  PersonsListDetailsViewController.swift
//  ContactList
//
//  Created by Анна Белова on 29.06.2024.
//

import UIKit

class PersonsListDetailsViewController: UITableViewController {
    var contactList: [Person]!
    
    
    // MARK: - UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let header = contactList[section].fullName
        
        return header
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contact = contactList[indexPath.section]
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = contact.phoneNumber
            content.image = UIImage(systemName: "phone")
        default:
            content.text = contact.email
            content.image = UIImage(systemName: "tray")
        }
        
        return cell
    }
}
    
    


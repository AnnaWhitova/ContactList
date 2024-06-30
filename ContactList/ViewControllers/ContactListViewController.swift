//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Анна Белова on 29.06.2024.
//

import UIKit

final class ContactListViewController: UITableViewController {
    var contactList: [Person]!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        let detailVC = segue.destination as? ContactDetailsViewController
        detailVC?.contact = contactList[indexPath.row]
    }
    

}

// MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact = contactList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
}


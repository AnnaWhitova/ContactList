//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Анна Белова on 29.06.2024.
//

import UIKit

class TabBarViewController: UITabBarController {
    private var contactList = Person.getContact()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else {return}
        
        viewControllers.forEach { viewController in
            if let  contactListVC  = viewController as? ContactListViewController {
                contactListVC.contactList = contactList
            } else if let personsDetailsVC = viewController as? PersonsListDetailsViewController {
                personsDetailsVC.contactList = contactList
            }
        }
    }

}

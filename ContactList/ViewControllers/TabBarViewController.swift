//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Анна Белова on 29.06.2024.
//

import UIKit

class TabBarViewController: UITabBarController {
    var contactList: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        transferData()
    }
    
    private func transferData() {
        tabBarController?.viewControllers?.forEach({ viewController in
            if let navigationVC = viewController as? UINavigationController {
                let persondListDetailVC = navigationVC.topViewController as? PersonsListDetailsViewController
                persondListDetailVC?.contactList = contactList
            }
        })
    }

}

//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Анна Белова on 28.06.2024.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet var contactNameLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contactNameLabel.text = contact.fullName
        phoneNumberLabel.text = contact.phoneNumber
        emailLabel.text = contact.email
    }
    

  

}

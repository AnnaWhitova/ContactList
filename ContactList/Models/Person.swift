//
//  Person.swift
//  ContactList
//
//  Created by Анна Белова on 28.06.2024.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    var fullName: String {
        "\(name)  \(surname)"
    }
    
    static func getContact() -> [Person] {
        var contacts: [Person] = []
        let contactNumber = DataStore().names.count
        
        let names = DataStore().names.shuffled()
        let surnames = DataStore().surnames.shuffled()
        let phoneNumbers =  DataStore().phoneNumbers.shuffled()
        let emails = DataStore().emails.shuffled()
       
        for index in 0..<contactNumber {
            contacts.append(Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index])
            )
        }
        return contacts
    }
}

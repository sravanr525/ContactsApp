//
//  ContactsManager.swift
//  ContactsApp
//
//  Created by Spurge on 03/03/21.
//

import Foundation
import Contacts

class ContactsManager {
    static func getContacts() -> [Contact] {
        let store = CNContactStore()
        let keysToFetch = [CNContactGivenNameKey, CNContactFamilyNameKey, CNContactEmailAddressesKey, CNContactPhoneNumbersKey, CNContactMiddleNameKey] as [CNKeyDescriptor]
        let fetchRequest = CNContactFetchRequest(keysToFetch: keysToFetch)
        var contacts = [Contact]()
        do {
            try store.enumerateContacts(with: fetchRequest, usingBlock: { (contact, stop) in
                for number in contact.phoneNumbers {
                    var address: String = ""
                    for email in contact.emailAddresses {
                        address = (address == "") ? (address + (email.value as String)) : ", " + address + (email.value as String)
                    }
                    contacts.append(Contact(givenName: contact.givenName, familyName: contact.familyName, middleName: contact.middleName, phoneNumber: number.value.stringValue, emailadddress: address))
                }
            })
        } catch {
        }
        return contacts
    }
}

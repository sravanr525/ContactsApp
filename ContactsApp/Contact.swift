//
//  Contact.swift
//  ContactsApp
//
//  Created by Spurge on 03/03/21.
//

import Foundation

public struct Contact {
    var givenName: String?
    var familyName: String?
    var middleName: String?
    var phoneNumber: String?
    var emailadddress: String?
    
    func getGivenName() -> String{
        return givenName ?? ""
    }
    
    func getFamilyName() -> String{
        return familyName ?? ""
    }

    func getMiddleName() -> String{
        return middleName ?? ""
    }
    
    func getPhoneNumber() -> String{
        return phoneNumber ?? ""
    }
    
    func getEmailAddress() -> String{
        return emailadddress ?? ""
    }
    
    func getContactDatals() -> [ConntactDetails]{
        return [ConntactDetails(title: "Given Name", subTitle: getGivenName()),
                ConntactDetails(title: "Family Name", subTitle: getFamilyName()),
                ConntactDetails(title: "Middle Name", subTitle: getMiddleName()),
                ConntactDetails(title: "Phone Number", subTitle: getPhoneNumber()),
                ConntactDetails(title: "Email Address(s)", subTitle: getEmailAddress())]
    }
}

struct ConntactDetails {
    var title: String
    var subTitle: String
}

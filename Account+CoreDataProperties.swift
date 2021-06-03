//
//  Account+CoreDataProperties.swift
//  Feedback
//
//  Created by Tommy Phan on 4/28/21.
//

import Foundation
import CoreData

extension Account {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Account> {
        return NSFetchRequest<Account>(entityName: "Account")
    }

    @NSManaged public var username: String?
    @NSManaged public var password: String?
    @NSManaged public var rating: String?

}

extension Account : Identifiable {

}

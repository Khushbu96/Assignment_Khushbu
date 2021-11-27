//
//  Todos+CoreDataProperties.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//
//

import Foundation
import CoreData


extension Todos {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Todos> {
        return NSFetchRequest<Todos>(entityName: "Todos")
    }

    @NSManaged public var id: Int64
    @NSManaged public var todoTitle: String?
    @NSManaged public var todoDate: Date?
    @NSManaged public var isAlertOn: Bool

}

extension Todos : Identifiable {

}

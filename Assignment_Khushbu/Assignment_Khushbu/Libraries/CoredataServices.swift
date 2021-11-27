//
//  CoredataServices.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import Foundation
import CoreData

protocol CoredataService: class {
    func getTodos() throws -> [Todos]
    func addTodo(title: String, date: String, time: String) throws -> Todos
    func deleteTodo(with id: String) throws
    func getTodo(with id: String) throws -> Todos?
}

class CoredataServiceImplementation: CoredataService {
    let persistentContainer = Application.shared.persistentContainer
    lazy var managedContext: NSManagedObjectContext = { persistentContainer.viewContext
    }()
    
    func getTodos() throws -> [Todos] {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Todos")
        
        do {
            let result = try managedContext.fetch(fetchRequest)
            
            if let titles = result as? [Todos] {
                return titles
            } else {
                return []
            }
        } catch {
            print("Couldn't get Todos")
            return []
        }
    }
    
    func addTodo(title: String, date: String, time: String) throws -> Todos {
        let todos = NSEntityDescription.insertNewObject(forEntityName: "Todos", into: managedContext) as! Todos
        todos.todoTitle = title
        todos.id = "\(Date.currentTimeStamp)"
        todos.todoDate = date
        todos.todoTime = time
        todos.isAlertOn = true
        todos.isTaskCompleted = false
        
        do {
            try managedContext.save()
        } catch {
            print("Couldn't add a Todos")
        }
        
        return todos
    }
    
    func deleteTodo(with id: String) throws {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Todos")
        fetchRequest.predicate = NSPredicate(format: "id = %@", id)
        
        do {
            let result = try managedContext.fetch(fetchRequest)
            
            if let objectToDelete = result.first as? NSManagedObject {
                managedContext.delete(objectToDelete)
                
                do {
                    try managedContext.save()
                } catch {
                    print(error)
                }
            }
        } catch {
            print(error)
        }
    }
    
    func getTodo(with id: String) throws -> Todos? {
        let predicate = NSPredicate(format: "id = %@", id)
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Todos")
        fetchRequest.predicate = predicate
        
        do {
            let result = try managedContext.fetch(fetchRequest)
            
            if let title = result.first as? Todos  {
                return title
            }
        } catch {
            print("Couldn't get title")
        }
        
        return nil
    }
}

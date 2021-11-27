//
//  AddTodoInteractor.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import Foundation

protocol AddTodoInteractor: class {
    func viewDidLoad()
    func addTapped(with title: String)
}

class AddTodoInteractorImplementation: AddTodoInteractor {
    var presenter: AddTodoPresenter?
    
    private let coredataService = CoredataServiceImplementation()
    private var todos: [Todos] = []
    
    func viewDidLoad()  {
        
    }
    
    func addTapped(with title: String) {
        do {
            let todo = try coredataService.addTodo(title: title)
            self.todos.append(todo)
            
            presenter?.interactor(didAddTodo: todo)
        } catch {
            print("error")
        }
    }
}

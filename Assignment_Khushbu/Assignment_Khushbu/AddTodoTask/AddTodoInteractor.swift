//
//  AddTodoInteractor.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import Foundation

protocol AddTodoInteractor: class {
    func viewDidLoad()
    func addTapped(with title: String, date: String, time: String)
}

class AddTodoInteractorImplementation: AddTodoInteractor {
    var presenter: AddTodoPresenter?
    var todoInteractor: TodoInteractor?
    
    private let coredataService = CoredataServiceImplementation()
    private var todos: [Todos] = []
    
    func viewDidLoad()  {
        
    }
    
    func addTapped(with title: String, date: String, time: String) {
        do {
            let todo = try coredataService.addTodo(title: title, date: date, time: time)
            self.todos.append(todo)
            todoInteractor?.viewDidLoad()
            presenter?.interactor(didAddTodo: todo)
        } catch {
            print("error")
        }
    }
}

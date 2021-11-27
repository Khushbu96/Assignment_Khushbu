//
//  TodoPresenter.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import Foundation

protocol TodoPresenter: class {
    func interactor(didRetrieveTodo todos: [Todos])
    func interactor(didFailRetrieveTodo error: Error)
    
    func interactor(didAddTodo todo: Todos)
    func interactor(didFailAddTodo error: Error)
    
    func interactor(didDeleteTodoAtIndex index: Int)
    func interactor(didFailDeleteTodoAtIndex index: Int)
    
    func interactor(didFindTodo todo: Todos)
}

class TodoPresenterImplementation: TodoPresenter {
    weak var viewController: TodoPresenterOutput?
    
    func interactor(didRetrieveTodo todos: [Todos]) {
    }
    
    func interactor(didFailRetrieveTodo error: Error) {
    }
    
    func interactor(didAddTodo todo: Todos) {
    }
    
    func interactor(didDeleteTodoAtIndex index: Int) {
    }
    
    func interactor(didFailDeleteTodoAtIndex index: Int) {
    }
    
    func interactor(didFailAddTodo error: Error) {
    }
    
    func interactor(didFindTodo todo: Todos) {
    }
}

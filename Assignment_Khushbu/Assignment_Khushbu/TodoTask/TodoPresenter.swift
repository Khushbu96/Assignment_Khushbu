//
//  TodoPresenter.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import Foundation

protocol TodoPresenter: class {
    func interactor(didRetrieveTodo todos: [Todos])
    func interactor(didAddTodo todo: Todos)
    
    func interactor(didDeleteTodoAtIndex index: Int)
    func interactor(didFailDeleteTodoAtIndex index: Int)
    
    func interactor(didFindTodo todo: Todos)
}

class TodoPresenterImplementation: TodoPresenter {
    weak var viewController: TodoPresenterOutput?
    
    func interactor(didRetrieveTodo todos: [Todos]) {
        viewController?.presenter(didRetrieveTodos: todos)
    }
    
    func interactor(didAddTodo todo: Todos) {
    }
    
    func interactor(didDeleteTodoAtIndex index: Int) {
    }
    
    func interactor(didFailDeleteTodoAtIndex index: Int) {
    }
    
    func interactor(didFindTodo todo: Todos) {
    }
}

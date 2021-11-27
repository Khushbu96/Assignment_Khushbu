//
//  AddTodoPresenter.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import Foundation

protocol AddTodoPresenter: class {
    func interactor(didAddTodo todo: Todos)
}

class AddTodoPresenterImplementation: AddTodoPresenter {
    weak var viewController: AddTodoPresenterOutput?
    
    func interactor(didAddTodo todo: Todos) {
        viewController?.presenter(didAddTodo: todo)
    }
}

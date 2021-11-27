//
//  TodoInteractor.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import Foundation

protocol TodoInteractor: class {
    func viewDidLoad()
    func didCommitDelete(for index: Int)
    func didSelectItems(at index: Int)
}

class TodoInteractorImplementation: TodoInteractor {

    var presenter: TodoPresenter?
    
    private let coredataService = CoredataServiceImplementation()
    private var todos: [Todos] = []
    
    func viewDidLoad()  {
        do {
            self.todos = try coredataService.getTodos()
            presenter?.interactor(didRetrieveTodo: todos)
        } catch {
            print("error")
        }
    }
    
    func didCommitDelete(for index: Int) {
        
    }
    
    func didSelectItems(at index: Int) {
        
    }
}

//
//  TodoInteractor.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import Foundation

protocol TodoInteractor: class {
    func viewDidLoad()
    func addTapped(with text: String)
    
    func didCommitDelete(for index: Int)
    
    func didSelectItems(at index: Int)
}

class TodoInteractorImplementation: TodoInteractor {

    var presenter: TodoPresenter?
    
    private var todos: [Todos] = []
    
    func viewDidLoad()  {
       
    }
    
    func addTapped(with text: String) {
    }
    
    func didCommitDelete(for index: Int) {
        
    }
    
    func didSelectItems(at index: Int) {
        
    }
}

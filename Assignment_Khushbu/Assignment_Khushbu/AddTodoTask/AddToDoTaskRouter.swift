//
//  AddToDoTaskRouter.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import Foundation
import UIKit

protocol AddTodoRouter: class {
    var navigationController: UINavigationController? { get }
    func popToTodo()
}

class AddTodoRouterImplementation: AddTodoRouter {
    weak var navigationController: UINavigationController?
    
    func popToTodo() {
        navigationController?.dismiss(animated: true, completion: nil)
    }
}

//
//  TodoRouter.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import Foundation
import UIKit

protocol TodoRouter: class {
    var navigationController: UINavigationController? { get }
    var interactor: TodoInteractor? {get}
    func routeToOpen(with id: String?)
}

class TodoRouterImplementation: TodoRouter {
    var interactor: TodoInteractor?
    weak var navigationController: UINavigationController?
    
    func routeToOpen(with id: String? = nil) {
        let viewController = (navigationController?.storyboard?.instantiateViewController(withIdentifier: "AddTodoTaskViewController"))! as! AddTodoTaskViewController
        AddTodoConfigurator.configureModule(todoInteractor: interactor!, naviagationController: navigationController!, viewController: viewController, todoID: id ?? "")
        navigationController?.present(viewController, animated: true)
    }
}

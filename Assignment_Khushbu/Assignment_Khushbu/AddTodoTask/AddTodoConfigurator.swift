//
//  AddTodoConfigurator.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import Foundation
import UIKit

class AddTodoConfigurator {
    
    static func configureModule(todoInteractor: TodoInteractor, naviagationController: UINavigationController, viewController: AddTodoTaskViewController, todoID: String) {
        let router = AddTodoRouterImplementation()
        let interactor = AddTodoInteractorImplementation()
        let presenter = AddTodoPresenterImplementation()
        viewController.router = router
        viewController.interactor = interactor
        interactor.presenter = presenter
        interactor.todoInteractor = todoInteractor
        presenter.viewController = viewController
        router.navigationController = naviagationController
    }
}

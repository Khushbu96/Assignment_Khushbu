//
//  AddTodoConfigurator.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import Foundation

class AddTodoConfigurator {
    
    static func configureModule(viewController: AddTodoTaskViewController, todoID: String) {
        let router = AddTodoRouterImplementation()
//        let interactor = TodoInteractorImplementation()
//        let presenter = TodoPresenterImplementation()
        viewController.router = router
//        viewController.interactor = interactor
//        interactor.presenter = presenter
        router.navigationController = viewController.navigationController
    }
}

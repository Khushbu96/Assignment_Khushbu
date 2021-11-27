//
//  TodoConfigurator.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import Foundation

class TodoConfigurator {
    
    static func configureModule(viewController: TodoViewController) {
        let router = TodoRouterImplementation()
        let interactor = TodoInteractorImplementation()
        let presenter = TodoPresenterImplementation()
        viewController.router = router
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.navigationController = viewController.navigationController
    }
}


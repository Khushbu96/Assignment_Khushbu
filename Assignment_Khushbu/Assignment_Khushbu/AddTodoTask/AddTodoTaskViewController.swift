//
//  AddTodoTaskViewController.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import UIKit

protocol AddTodoPresenterOutput: class {
    func presenter(didAddTodo todo: Todos)
}

class AddTodoTaskViewController: UIViewController {

    var router: AddTodoRouter?
    var interactor: AddTodoInteractor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnCloseTap(_ sender: UIButton) {
        self.router?.popToTodo()
    }

    @IBAction func btnSaveTap(_ sender: UIButton) {
        self.interactor?.addTapped(with: "Hello")
    }

}

extension AddTodoTaskViewController: AddTodoPresenterOutput {
    func presenter(didAddTodo todo: Todos) {
        self.router?.popToTodo()
    }
}

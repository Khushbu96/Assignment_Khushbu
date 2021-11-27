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

    @IBOutlet private weak var txtTaskTitle: UITextField!
    @IBOutlet private weak var btnDate: UIButton!
    @IBOutlet private weak var btnTime: UIButton!
    
    var router: AddTodoRouter?
    var interactor: AddTodoInteractor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
    }
    
    private func prepareView() {
        let todayDate = Date()
        let date = Date.stringFromCustomDate(fromDate: todayDate, withFormat: Date.dateOnly, capsFormatter: true)
        let time = Date.stringFromCustomDate(fromDate: todayDate, withFormat: Date.timeOnly, capsFormatter: true)
        btnDate.setTitle(date, for: .normal)
        btnTime.setTitle(time, for: .normal)
    }
    
    @IBAction func btnCloseTap(_ sender: UIButton) {
        self.router?.popToTodo()
    }

    @IBAction func btnSaveTap(_ sender: UIButton) {
        self.interactor?.addTapped(with: txtTaskTitle.text ?? "", date: btnDate.titleLabel?.text ?? "", time: btnTime.titleLabel?.text ?? "")
    }

}

extension AddTodoTaskViewController: AddTodoPresenterOutput {
    func presenter(didAddTodo todo: Todos) {
        self.router?.popToTodo()
    }
}

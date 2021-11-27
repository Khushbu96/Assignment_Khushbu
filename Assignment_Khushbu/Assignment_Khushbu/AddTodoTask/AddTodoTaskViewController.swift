//
//  AddTodoTaskViewController.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import UIKit

class AddTodoTaskViewController: UIViewController {

    var router: AddTodoRouter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnCloseTap(_ sender: UIButton) {
        self.router?.popToTodo(with: nil)
    }

    @IBAction func btnSaveTap(_ sender: UIButton) {
        
    }

}

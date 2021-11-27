//
//  TodoViewController.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import UIKit

protocol TodoPresenterOutput: class {
    func presenter(didRetrieveItems items: [String])
    func presenter(didFailRetrieveItems message: String)
    
    func presenter(didAddItem item: String)
    func presenter(didFailAddItem message: String)
    
    func presenter(didDeleteItemAtIndex index: Int)
    func presenter(didFailDeleteItemAtIndex index: Int, message: String)
    
    func presenter(didObtainItemId id: String)
    func presenter(didFailObtainItemId message: String)
}

class TodoViewController: UIViewController {

    //MARK:- Outlets
    @IBOutlet private weak var collectionViewTodos: UICollectionView!
    @IBOutlet private weak var btnAddTodoTask: UIButton!
    
    private var todos: [Todos] = []
    var interactor: TodoInteractor?
    var router: TodoRouter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TodoConfigurator.configureModule(viewController: self)
    }
    
    @IBAction func btnAddTodoTaskTap(_ sender: UIButton) {
        self.router?.routeToOpen(with: nil)
    }
    
    
}

extension TodoViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return todos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width - 50 / 2)
        return CGSize(width: width, height: width)
    }
}

//
//  TodoCell.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import UIKit

class TodoCell: UICollectionViewCell {
    
    @IBOutlet private weak var lblDate: UILabel!
    @IBOutlet private weak var lblTime: UILabel!
    @IBOutlet private weak var lblTitle: UILabel!
    
    var todo: Todos! {
        didSet {
            lblDate.text = todo.todoDate
            lblTime.text = todo.todoTime
            lblTitle.text = todo.todoTitle
        }
    }
}

//
//  UICollectionView+Extension.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import UIKit

extension UICollectionView {

    func registerAndGet<T:UICollectionViewCell>(_ identifier:T.Type, indexPath: IndexPath) -> T? {
        let cellID = String(describing: identifier)

        //register
        self.register(UINib(nibName: cellID, bundle: nil), forCellWithReuseIdentifier: cellID)
        return self.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as? T
    }

    func getCell<T:UICollectionViewCell>(_ identifier:T.Type, indexPath: IndexPath) -> T? {
        let cellID = String(describing: identifier)
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as? T else {
            print("cell not exist")
            return nil
        }
        return cell
    }
}


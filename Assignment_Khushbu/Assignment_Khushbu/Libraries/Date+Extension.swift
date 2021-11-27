//
//  Date+Extension.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import Foundation

extension Date {
    static var currentTimeStamp: Int64 {
        return Int64(Date().timeIntervalSince1970 * 1000)
    }
}

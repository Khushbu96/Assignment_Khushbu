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
    
    static var dateOnly: String {
        return "EEE dd,yyyy"
    }
    
    static var timeOnly: String {
        return "h:mm a"
    }
    
    static func stringFromCustomDate(fromDate date:Date, withFormat format:String, capsFormatter: Bool = false) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone.current
        if capsFormatter {
            formatter.amSymbol = "AM"
            formatter.pmSymbol = "PM"
        } else {
            formatter.amSymbol = "am"
            formatter.pmSymbol = "pm"
        }
        return formatter.string(from: date)
    }
}

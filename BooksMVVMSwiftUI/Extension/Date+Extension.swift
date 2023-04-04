//
//  Date+Extension.swift
//  BooksMVVMSwiftUI
//
//  Created by Husnain Ali - ILI on 04/04/2023.
//

import Foundation

extension Date {
    func getYear() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy"
        return dateFormatter.string(from: self)
    }

    static func getDateFromString(_ dateString: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.date(from: dateString)!
    }
}

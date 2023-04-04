//
//  Book.swift
//  BooksMVVMSwiftUI
//
//  Created by Husnain Ali - ILI on 04/04/2023.
//

import Foundation

struct Book: Identifiable {
    var id: String { isbn }
    
    let isbn: String
    let title: String
    let authors: [String]
    let pages: Int
    let publicationDate: Date
}

//
//  BooksRepository.swift
//  BooksMVVMSwiftUI
//
//  Created by Husnain Ali - ILI on 04/04/2023.
//

import Foundation

protocol BooksRepository {
    func get() -> [Book]
}

class AppBooksRepository: BooksRepository {
    private let books = [
        Book(isbn: "0804139296",
             title: "Zero to One",
             authors: ["Peter Thiel", "Blake Masters"],
             pages: 224,
             publicationDate: Date.getDateFromString("04/06/2015")),
        Book(isbn: "0307887898",
             title: "The Lean Startup",
             authors: ["Eric Ries"],
             pages: 336,
             publicationDate: Date.getDateFromString("06/10/2011"))
    ]
    
    func get() -> [Book] {
        return books
    }
}

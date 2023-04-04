//
//  BookListViewModel.swift
//  BooksMVVMSwiftUI
//
//  Created by Husnain Ali - ILI on 04/04/2023.
//

import SwiftUI

struct BookCellViewData: Identifiable, Equatable {
    let id: String
    let title: String
    let substitle: String
}

class ViewModel: ObservableObject {
    @Published var books: [BookCellViewData] = []

    private let booksRepository: BooksRepository

    init(with booksRepository: BooksRepository) {
        self.booksRepository = booksRepository
    }

    func fetchBooks() {
        let books = self.booksRepository.get().map { book in
            let substitle = "\(book.authors.joined(separator: ", ")) ⚬ \(book.publicationDate.getYear())"
            return BookCellViewData(id: book.id,
                                    title: book.title,
                                    substitle: substitle)
        }
        self.books = books
    }
}

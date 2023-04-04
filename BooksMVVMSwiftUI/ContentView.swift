//
//  ContentView.swift
//  BooksMVVMSwiftUI
//
//  Created by Husnain Ali - ILI on 04/04/2023.
//

import SwiftUI

struct BookListView: View {
    @ObservedObject private var viewModel = ViewModel(with: AppBooksRepository())
    
    var body: some View {
        List(viewModel.books) { book in
            BookCell(book: book)
                .listRowSeparator(.hidden)
        }
        .listStyle(.insetGrouped)
        .scrollContentBackground(.hidden)
        .padding()
        .onAppear(perform: {
            self.viewModel.fetchBooks()
        })
    }
}

struct ContentView: View {
    var body: some View {
        BookListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

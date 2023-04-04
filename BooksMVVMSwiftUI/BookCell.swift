//
//  BookCell.swift
//  BooksMVVMSwiftUI
//
//  Created by Husnain Ali - ILI on 04/04/2023.
//

import SwiftUI

struct BookCell: View {
    let book: BookCellViewData
    
    var body: some View {
        VStack {
            HStack {
                Text(book.title)
                    .font(.title2)
                Spacer()
            }
            HStack {
                Text(book.substitle)
                    .font(.caption)
                Spacer()
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 12).fill(Color(uiColor: UIColor.lightGray)))
        .listRowBackground(Color.clear)
        .listRowSeparator(.hidden)
        .listRowInsets(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
    }
}

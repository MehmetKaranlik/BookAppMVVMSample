//
//  HomeViewViewModel.swift
//  BookAppMVVMSample
//
//  Created by mehmet karanlık on 25.12.2021.
//

import Foundation
import SwiftUI


class HomeViewModel : ObservableObject {
    let url:URL! = URL(string: "/books.json")

    @Published var books = [Book]()

    init() {
    fetchBooks()
    }

    func fetchBooks()
    {
    URLSession.shared.dataTaskPublisher(for: url)
    .map { $0.data }
    .decode(type: [Book].self, decoder: JSONDecoder())
    .replaceError(with: [])
    .eraseToAnyPublisher()
    .receive(on: DispatchQueue.main)
    .assign(to: &$books)
    }

}

    //
    //  ContentView.swift
    //  BookAppMVVMSample
    //
    //  Created by mehmet karanlık on 25.12.2021.
    //

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel : HomeViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.books) { book in
                NavigationLink(destination: BookEditView(book: viewModel.books[0])) {
                    ListRowView(book: book)
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: HomeViewModel())
    }
}

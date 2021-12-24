    //
    //  ListRowView.swift
    //  BookAppMVVMSample
    //
    //  Created by mehmet karanlık on 25.12.2021.
    //

import SwiftUI

struct ListRowView: View
{
    var book: Book
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(book.title)
            Text(book.author)
        }
    }
}
struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView()
    }
}

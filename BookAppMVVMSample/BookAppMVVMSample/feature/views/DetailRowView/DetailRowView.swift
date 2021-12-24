    //
    //  DetailRowView.swift
    //  BookAppMVVMSample
    //
    //  Created by mehmet karanlık on 25.12.2021.
    //

import SwiftUI

struct DetailRowView: View {
    var item: Detailable
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.title)
            Text(item.subtitle)
        }
    }
}

struct DetailRowView_Previews: PreviewProvider {
    static var previews: some View {
        DetailRowView()
    }
}

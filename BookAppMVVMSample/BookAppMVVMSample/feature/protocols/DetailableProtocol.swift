    //
    //  DetailableProtocol.swift
    //  BookAppMVVMSample
    //
    //  Created by mehmet karanlık on 25.12.2021.
    //

import Foundation

protocol Detailable {
    var title: String { get }
    var subtitle: String { get }
}


extension Book: Detailable {
    var subtitle: String {
        return author
    }
}

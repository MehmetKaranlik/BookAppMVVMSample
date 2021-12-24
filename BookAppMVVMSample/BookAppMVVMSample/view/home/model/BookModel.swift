    //
    //  BookModel.swift
    //  BookAppMVVMSample
    //
    //  Created by mehmet karanlık on 25.12.2021.
    //

import Foundation


struct Book : Codable, Identifiable {
    let id : Int
    let title: String
    let author: String
}

//
//  PostData.swift
//  Hacker-News-SwiftUI
//
//  Created by Jonas Bergström on 2022-10-10.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let url: String
    let points: Int
}

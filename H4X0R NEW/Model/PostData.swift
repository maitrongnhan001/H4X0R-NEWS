//
//  PostData.swift
//  H4X0R NEW
//
//  Created by Nhan Mai on 19/06/2024.
//

import Foundation

struct Results: Decodable {
    let hits: [PostData]
}

struct PostData: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}

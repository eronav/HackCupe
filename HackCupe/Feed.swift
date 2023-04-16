//
//  Feed.swift
//  HackCupe
//
//  Created by Advaith Anand on 4/15/23.
//

import Foundation

struct Feed: Identifiable {
    var id: UUID
    var title: String
    var description: String
    init() {
        title = ""
        description = ""
        id = UUID()
    }
}

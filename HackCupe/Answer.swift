//
//  Answer.swift
//  HackCupe
//
//  Created by Advaith Anand on 4/16/23.
//

import Foundation

class Answer: Identifiable {
    var id: UUID
    var poster: String
    var answer: String
    
    init() {
        id = UUID()
        poster = "Admin1"
        answer = "YesI think one is better"
    }
}

//
//  Question.swift
//  HackCupe
//
//  Created by Ronav Dholakia on 4/16/23.
//

import Foundation
import SwiftUI

class Question: Identifiable {
    var id: UUID
    var tags: [Tag]
    var poster: String
    var question: String
    
    init() {
        id = UUID()
        tags = []
        poster = "NaN"
        question = "NaN"
    }
}

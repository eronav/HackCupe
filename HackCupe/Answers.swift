//
//  Questions.swift
//  HackCupe
//
//  Created by Ronav Dholakia on 4/16/23.
//

import Foundation

class Answers: ObservableObject {
    var answers: [Answer] = []
    
    init() {
        var a = Answer()
        a.answer = "Yes One is the better than the other"
        a.poster = "Joe Bob Kim"
        
        var a2 = Answer()
        a2.answer = "I think they are both the same. Depends on your preference"
        a2.poster = "Mr Jones"

        var a3 = Question()
        a3.question = "When did The United States of America join WW2?"
        a3.poster = "Creepy Tom"
    }
        
    func addAnswer(poster: String, answer: String) {
        var a = Answer()
        a.answer = answer
        a.poster = poster
        answers.insert(a, at: 0)
    }
}

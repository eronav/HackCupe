//
//  Questions.swift
//  HackCupe
//
//  Created by Ronav Dholakia on 4/16/23.
//

import Foundation

class Questions: ObservableObject {
    var questions: [Question] = []
    
    init() {
        var q = Question()
        q.tags = [Tag(t: Tagg.trig), Tag(t: Tagg.aam), Tag(t: Tagg.precalc)]
        q.question = "In a right triangle ABC, tan(A) = 3/4. Find sin(A) and cos(A)."
        q.poster = "Joe Bob Kim"
        
        var q1 = Question()
        q1.tags = [Tag(t: Tagg.lit)]
        q1.question = "How would I write a analytical paragraph? What are the part of analytical paragraph?"
        q1.poster = "Mr Jones"

        var q2 = Question()
        q2.tags = [Tag(t: Tagg.ushist), Tag(t: Tagg.worldhist)]
        q2.question = "When did The United States of America join WW2?"
        q2.poster = "Creepy Tom"

        var q3 = Question()
        q3.tags = [Tag(t: Tagg.gov), Tag(t: Tagg.econ), Tag(t: Tagg.ushist)]
        q3.question = "What did the government have to do with the 2008 Financial Crisis?"
        q3.poster = "Capt Beatty"

        var q4 = Question()
        q4.tags = [Tag(t: Tagg.bio), Tag(t: Tagg.gov)]
        q4.question = "What chemical processes take place in the human body bio chem?"
        q4.poster = "Guy Montag"

        var q5 = Question()
        q5.tags = [Tag(t: Tagg.python)]
        q5.question = "Write a lambda function in python."
        q5.poster = "The Giver"

        var q6 = Question()
        q6.tags = [Tag(t: Tagg.apcsa), Tag(t: Tagg.java), Tag(t: Tagg.c), Tag(t: Tagg.swift)]
        q6.question = "Tips on OOP."
        q6.poster = "Darth Vader"

        var q7 = Question()
        q7.tags = [Tag(t: Tagg.swift)]
        q7.question = "Should I use SwiftUI or UIKit"
        q7.poster = "Luke Earthwalker"

        questions.insert(q, at: 0)
        questions.insert(q1, at: 0)
        questions.insert(q2, at: 0)
        questions.insert(q3, at: 0)
        questions.insert(q4, at: 0)
        questions.insert(q5, at: 0)
        questions.insert(q6, at: 0)
        questions.insert(q7, at: 0)
    }
        
    func add(poster: String, question: String, tags: [Tag]) {
        var q = Question()
        q.tags = tags
        q.question = question
        q.poster = poster
        questions.insert(q, at: 0)
    }
    
    func matches(for search: String) -> [Question] {
        if (search.isEmpty) {
            return questions
        }
        
        return questions.filter {
            var valid = $0.question.localizedCaseInsensitiveContains(search)
            if (valid) {
                return true
            }
            valid = valid || $0.poster.localizedCaseInsensitiveContains(search)
            if (valid) {
                return true
            }
            for t in $0.tags {
                valid = valid || t.val.localizedCaseInsensitiveContains(search)
                if (valid) {
                    return true
                }
            }
            return valid
        }
    }
}

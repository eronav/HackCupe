//
//  Feeds.swift
//  HackCupe
//
//  Created by Advaith Anand on 4/15/23.
//

import Foundation

class Feeds: ObservableObject {
    var feeds: [Feed] = []
    
    init() {
        var f1 = Feed()
        f1.title = "Hannah - Tennis Game Today"
        f1.description = "Tennis Game at Monta Vista Highschool at 3:00 PM. Lymbrook vs Monta Vista Girls Varsity"
        var f2 = Feed()
        f2.title = "Cupertino City - Hackathon Today"
        f2.description = "Hackathon at Quinlin Community Center at 6:00 PM"
        var f3 = Feed()
        f3.title = "Eric - Spring Fest Next Week"
        f3.description = "Spring Fest at Monta Vista High School next Friday April 14th. Buy tickets soon!"
        var f4 = Feed()
        f4.title = "Lymbrook High School - Chipotle Fundraiser"
        f4.description = "Funraiser at Chipotle! Come today to Chipotle to support Lymbrook. Make sure to say that you are from Lymbrook to get a discount"
        
        
        feeds.insert(f1, at: 0)
        feeds.insert(f2, at: 0)
        feeds.insert(f3, at: 0)
        feeds.insert(f4, at: 0)
    }
    func addNewPost() {
        //feeds.add(title: newPostTitle, description: newPostDescription)
    }

    func add(title: String, description: String) {
        var f = Feed()
        f.title = title
        f.description = description
        feeds.insert(f, at: 0)
    }
}

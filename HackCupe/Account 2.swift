//
//  Account.swift
//  HackCupe
//
//  Created by Ronav Dholakia on 4/15/23.
//

import Foundation

class Account: Codable, Identifiable {
    var username: String
    var password: String
    init() {
        username = ""
        password = ""
    }
}

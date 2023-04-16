//
//  ContentView.swift
//  HackCupe
//
//  Created by Ronav Dholakia on 4/15/23.
//

import SwiftUI

struct ContentView: View {
    var acc = Accounts2()
    var feeds = Feeds()
    var questions = Questions()
    var answers = Answers()
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
        SignInView()
            .environmentObject(acc)
            .environmentObject(feeds)
            .environmentObject(questions)
            .environmentObject(answers)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

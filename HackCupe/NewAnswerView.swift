//
//  NewAnswerView.swift
//  HackCupe
//
//  Created by Advaith Anand on 4/16/23.
//

import SwiftUI

struct NewAnswerView: View {
    @Environment(\.presentationMode) var presentationMode
    var question: Question
    @EnvironmentObject var answers: Answers
    @State private var newAnswer: String = ""
    var body: some View {
        VStack {
            TextField("Answer", text: $newAnswer)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8.0)
                .padding(.bottom, 20)
            
            Button(action: addNewPost) {
                Text("Add New Post")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8.0)
            }
        }
        .padding()
    }

    func addNewPost() {
        answers.addAnswer(poster: Accounts2.USERNAME, answer: newAnswer)
        presentationMode.wrappedValue.dismiss()
    }
}

//struct NewAnswerView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewAnswerView()
//    }
//}

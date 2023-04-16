import SwiftUI

struct NewQandAView: View {
    @EnvironmentObject var questions: Questions
    @Environment(\.presentationMode) var presentationMode
    @State private var newQuestion: String = ""
    @State private var newTags: [Tag] = []
    @State private var remainingTags: [Tag] = Tag.allTags


    var body: some View {
        VStack {
            TextField("Question", text: $newQuestion)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8.0)
                .padding(.bottom, 20)

            HStack {
                List {
                    Section {
                        ForEach(newTags) { tag in
                            Text(tag.val.uppercased())
                                .onTapGesture {
                                    newTags = newTags.filter() {
                                        $0.val != tag.val
                                    }
                                    remainingTags.insert(tag, at: 0)
                                }
                        }
                    } header: {
                        Text("Your Tags")
                            .font(.headline)
                            .foregroundColor(Color("RichBlack"))
                    }
                }
                List {
                    Section {
                        ForEach(remainingTags) { tag in
                            Text(tag.val.uppercased())
                                .onTapGesture {
                                    remainingTags = remainingTags.filter() {
                                        $0.val != tag.val
                                    }
                                    newTags.insert(tag, at: 0)
                                }
                        }
                    } header: {
                        Text("All Tags")
                            .font(.headline)
                            .foregroundColor(Color("RichBlack"))
                    }
                }
            }
            .scrollContentBackground(.hidden)
            .listStyle(InsetGroupedListStyle())
            .padding(.horizontal)
            
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
        questions.add(poster: Accounts2.USERNAME, question: newQuestion, tags: newTags)
        presentationMode.wrappedValue.dismiss()
    }
}


struct NewQandAView_Preview: PreviewProvider {
    static var previews: some View {
        NewQandAView()
    }
}

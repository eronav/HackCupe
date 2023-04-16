import SwiftUI

struct NewFeedView: View {
    @EnvironmentObject var feeds: Feeds
    @Environment(\.presentationMode) var presentationMode
    @State private var newPostTitle: String = ""
    @State private var newPostDescription: String = ""


    var body: some View {
        VStack {
            TextField("Title", text: $newPostTitle)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8.0)
                .padding(.bottom, 20)

            TextField("Description", text: $newPostDescription)
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
        feeds.add(title: Accounts2.USERNAME + " - " + newPostTitle, description: newPostDescription)
        presentationMode.wrappedValue.dismiss()
    }
}


struct NewFeedView_Previews: PreviewProvider {
    static var previews: some View {
        NewFeedView()
    }
}

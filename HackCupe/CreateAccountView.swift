import SwiftUI

struct CreateAccountView: View {
    @EnvironmentObject var acc: Accounts2
    @Environment(\.presentationMode) var presentationMode

    @State private var username: String = ""
    @State private var password: String = ""
    @State private var retypePassword: String = ""
    @State private var showAlert = false
    @State private var showSignInView = false

    var body: some View {
        VStack {
            Text("Community Nexus")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 50)

            TextField("Username", text: $username)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8.0)
                .padding(.bottom, 20)
                .autocapitalization(.none)

            SecureField("Password", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8.0)
                .padding(.bottom, 20)
                .autocapitalization(.none)

            SecureField("Retype Password", text: $retypePassword)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8.0)
                .padding(.bottom, 20)
                .autocapitalization(.none)

            NavigationLink(destination: SignInView().navigationBarBackButtonHidden(true), isActive: $showSignInView) {
                EmptyView()
            }

            Button(action: {
                // Handle account creation action here
                if password == retypePassword {
                    acc.save(username: username, password: password)
                    showSignInView = true
                } else {
                    // Show alert
                    self.showAlert.toggle()
                }
            }) {
                Text("Create Account")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8.0)
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Error"), message: Text("Passwords do not match"), dismissButton: .default(Text("OK")))
            }

            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}

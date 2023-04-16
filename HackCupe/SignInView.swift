import SwiftUI

struct SignInView: View {
    @EnvironmentObject var acc: Accounts2
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showAlert = false
    @State private var showHomePageView = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Community Nexus")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 50)
                    .padding(.top, 25)
                
                
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
                
                NavigationLink(destination: HomePageView().navigationBarBackButtonHidden(true), isActive: $showHomePageView) {
                    EmptyView()
                }
                
                Button(action: {
                    var valid = false
                    for a in acc.accounts {
                        if (a.username == username && a.password == password) {
                            valid = true
                            break
                        }
                    }
                    if valid {
                        showHomePageView = true
                        Accounts2.USERNAME = username
                        Accounts2.PASSWORD = password
                    } else {
                        showAlert = true
                    }
                }) {
                    Text("Sign In")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8.0)
                }
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Error"), message: Text("Invalid credentials"), dismissButton: .default(Text("OK")))
                }
                
                Spacer()
                
                NavigationLink(destination: CreateAccountView()) {
                    Text("Create New Account")
                        .foregroundColor(Color.blue)
                }
                Group {
                    Spacer()
                    Spacer()
                }
                Image("icon")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .scaledToFit()
                    .clipShape(Circle())
                Spacer()
            }
            .padding(.horizontal, 20)
        }
        .navigationBarHidden(true)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

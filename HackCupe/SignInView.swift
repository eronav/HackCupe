//
//  SignInView.swift
//  HackCupe
//
//  Created by Advaith Anand on 4/15/23.
//

import SwiftUI

struct SignInView: View {
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        NavigationView {
            VStack {
                Text("CommUnity")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 50)
                
                TextField("Username", text: $username)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8.0)
                    .padding(.bottom, 20)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8.0)
                    .padding(.bottom, 20)
                
                Button(action: {
                    // Handle sign-in action here
                }) {
                    Text("Sign In")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8.0)
                }
                
                Spacer()
                
                Button(action: {
                    // Navigate to the new account creation screen
                }) {
                    NavigationLink(destination: CreateAccountView()) {
                        Text("Create New Account")
                            .foregroundColor(Color.blue)
                    }
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

//
//  QandAView.swift
//  HackCupe
//
//  Created by Advaith Anand on 4/15/23.
//

import SwiftUI

struct QandAView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Q&A")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 50)
                        .padding(.top, 25)
                        .padding(.leading, 25)
                        
                    Spacer()
                }
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                HStack {
                    Spacer()
                    Image(systemName: "magnifyingglass.circle.fill")
                        .resizable()
                        .foregroundColor(.black)
                        .frame(width:40,height:40)
                        .scaledToFit()
                    Group {
                        Spacer()
                        Spacer()
                    }
                    NavigationLink(destination: HomePageView().navigationBarBackButtonHidden(true)) {
                        Image(systemName: "house.fill")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width:40,height:40)
                            .scaledToFit()
                    }
                    Spacer()
                    Spacer()
                    NavigationLink(destination: FeedView().navigationBarBackButtonHidden(true)) {
                        Image(systemName: "text.bubble")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width:40,height:40)
                            .scaledToFit()
                    }
                    Group {
                        Spacer()
                        Spacer()
                    }
                    NavigationLink(destination: AccountView()) {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 40, height: 40)
                            .scaledToFit()
                    }
                    Spacer()
                    
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct QandAView_Previews: PreviewProvider {
    static var previews: some View {
        QandAView()
    }
}

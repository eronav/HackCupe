//
//  QandAView.swift
//  HackCupe
//
//  Created by Advaith Anand on 4/15/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Feed")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 50)
                        .padding(.top, 25)
                        .offset(x: -130, y:-10)
                }
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: QandAView().navigationBarBackButtonHidden(true)) {
                        Image(systemName: "magnifyingglass.circle.fill")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width:40,height:40)
                            .scaledToFit()
                    }
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
                        Image(systemName: "text.bubble")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width:40,height:40)
                            .scaledToFit()
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
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}

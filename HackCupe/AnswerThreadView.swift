//
//  QandAView.swift
//  HackCupe
//
//  Created by Advaith Anand on 4/15/23.
//

import SwiftUI

struct AnswerThreadView: View {
    var question: Question
    @EnvironmentObject var answers: Answers
    
    var a = Answer()

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Answer Thread")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.horizontal, 25)
                    Spacer()
                    NavigationLink(destination: NewAnswerView(question: question).navigationBarBackButtonHidden(true)) {
                        Image(systemName:"plus")
                            .padding(.horizontal, 25)
                            
                    }
                }
                List {
                    Section {
                        VStack(alignment: .leading, spacing: 10) {
                            HStack {
                                Text(question.poster)
                                    .font(.headline)
                                    .fontWeight(.bold)
                                ForEach(0..<min(3, question.tags.count)) { i in
                                    var t = question.tags[i]
                                    Text(t.val)
                                        .padding(.horizontal, 6)
                                        .padding(.vertical, 4)
                                        .background(Color("LapizLazuli"))
                                        .clipShape(Capsule())
                                        .foregroundColor(.white)
                                }
                            }
                            Text(question.question)
                                .font(.body)
                                .foregroundColor(Color("RichBlack"))
                        }
                        .padding()
                        .background(Color("LightBlue"))
                        .cornerRadius(8)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                    }.listRowBackground(Color("LapizLazuli"))
                    
                    Section (header: Text("Answers")) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text(a.poster)
                                .font(.headline)
                                .fontWeight(.bold)
                            Text(a.answer)
                                .font(.body)
                                .foregroundColor(Color("RichBlack"))
                        }
                        .padding()
                        .background(Color("LightBlue"))
                        .cornerRadius(8)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                    }.listRowBackground(Color("LapizLazuli"))
                }
                .listStyle(InsetGroupedListStyle())
                
                HStack {
                    Spacer()
                    Image(systemName: "magnifyingglass.circle.fill")
                        .resizable()
                        .foregroundColor(Color("SteelBlue"))
                        .frame(width:40,height:40)
                        .scaledToFit()
                    Group {
                        Spacer()
                        Spacer()
                    }
                    NavigationLink(destination: HomePageView().navigationBarBackButtonHidden(true)) {
                        Image(systemName: "house.fill")
                            .resizable()
                            .foregroundColor(Color("SteelBlue"))
                            .frame(width:40,height:40)
                            .scaledToFit()
                    }
                    Spacer()
                    Spacer()
                    NavigationLink(destination: FeedView().navigationBarBackButtonHidden(true)) {
                        Image(systemName: "text.bubble")
                            .resizable()
                            .foregroundColor(Color("SteelBlue"))
                            .frame(width:40,height:40)
                            .scaledToFit()
                    }
                    Group {
                        Spacer()
                        Spacer()
                    }
                    NavigationLink(destination: AccountView().navigationBarBackButtonHidden(true)) {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .foregroundColor(Color("SteelBlue"))
                            .frame(width: 40, height: 40)
                            .scaledToFit()
                    }
                    Spacer()
                    
                }
            }
        }
    }
}

//struct AnswerThreadView_Preview: PreviewProvider {
//    static var previews: some View {
//        AnswerThreadView()
//    }
//}

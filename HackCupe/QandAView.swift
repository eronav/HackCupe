//
//  QandAView.swift
//  HackCupe
//
//  Created by Advaith Anand on 4/15/23.
//

import SwiftUI

struct QandAView: View {
    @EnvironmentObject var questions: Questions
    @State var searchText: String = ""
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Q&A")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.horizontal, 25)
                    Spacer()
                    NavigationLink(destination: NewQandAView()) {
                        Image(systemName:"plus")
                            .padding(.horizontal, 25)
                            
                    }
                }
                List {
                    Section {
                        ForEach(questions.matches(for: searchText)) { q in
                            NavigationLink(destination: AnswerThreadView(question: q).navigationBarBackButtonHidden(true)) {
                                VStack(alignment: .leading, spacing: 10) {
                                    HStack {
                                        Text(q.poster)
                                            .font(.headline)
                                            .fontWeight(.bold)
                                        ForEach(0..<min(3, q.tags.count)) { i in
                                            var t = q.tags[i]
                                            Text(t.val)
                                                .padding(.horizontal, 6)
                                                .padding(.vertical, 4)
                                                .background(Color("LapizLazuli"))
                                                .clipShape(Capsule())
                                                .foregroundColor(.white)
                                        }
                                    }
                                    Text(q.question)
                                        .font(.body)
                                        .foregroundColor(Color("RichBlack"))
                                }
                                .padding()
                                .background(Color("LightBlue"))
                                .cornerRadius(8)
                                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                            }
                        }
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
            .searchable(text: $searchText)
        }
    }
}

struct QandAView_Previews: PreviewProvider {
    static var previews: some View {
        QandAView()
    }
}

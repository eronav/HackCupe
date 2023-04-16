import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var feed: Feeds
    @EnvironmentObject var questions: Questions
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Community Nexus")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("PrussianBlue"))
                        .padding(.horizontal, 25)
                    Spacer()
                }
                .padding(.bottom, 25)
                
                List {
                    Section {
                        ForEach(0..<min(3, questions.questions.count)) { i in
                            let q = questions.questions[i]
                            VStack(alignment: .leading, spacing: 10) {
                                HStack {
                                    Text(q.poster)
                                        .font(.headline)
                                        .fontWeight(.bold)
                                    ForEach(0..<(min(3, q.tags.count))) { i in
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
                    } header: {
                        HStack {
                            Text("Questions").font(.title3).padding(.top).foregroundColor(Color("RichBlack"))
                            Spacer()
                            Button {
                                //
                            } label: {
                                NavigationLink(destination: QandAView().navigationBarBackButtonHidden(true)) {
                                    Text("View All")
                                }
                                
                            }
                        }
                    }.listRowBackground(Color("LapizLazuli"))
                    
                    Section {
                        ForEach(0..<min(6, feed.feeds.count)) { i in
                            let f = feed.feeds[i]
                            VStack(alignment: .leading, spacing: 10) {
                                Text(f.title)
                                    .font(.headline)
                                    .bold()
                                Text(f.description)
                                    .font(.body)
                                    .foregroundColor(Color("RichBlack"))
                            }
                            .padding()
                            .background(Color("LightBlue"))
                            .cornerRadius(8)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                        }
                    } header: {
                        HStack {
                            Text("Feed").font(.title3).padding(.top).foregroundColor(Color("RichBlack"))
                            Spacer()
                            Button {
                                // Action
                            } label: {
                                NavigationLink(destination: FeedView().navigationBarBackButtonHidden(true)) {
                                    Text("View All")
                                }
                            }
                        }
                    }.listRowBackground(Color("LapizLazuli"))
                }
                .scrollContentBackground(.hidden)
                .listStyle(InsetGroupedListStyle())
                
                Spacer()
                
                HStack {
                    Spacer()
                    NavigationLink(destination: QandAView().navigationBarBackButtonHidden(true)) {
                        Image(systemName: "magnifyingglass.circle.fill")
                            .resizable()
                            .foregroundColor(Color("LapizLazuli"))
                            .frame(width: 40, height: 40)
                            .scaledToFit()
                    }
                    Spacer()
                    
                    Image(systemName: "house.fill")
                        .resizable()
                        .foregroundColor(Color("LapizLazuli"))
                        .frame(width: 40, height: 40)
                        .scaledToFit()
                    Spacer()
                    
                    NavigationLink(destination: FeedView().navigationBarBackButtonHidden(true)) {
                        Image(systemName: "text.bubble")
                            .resizable()
                            .foregroundColor(Color("LapizLazuli"))
                            .frame(width: 40, height: 40)
                            .scaledToFit()
                    }
                    Spacer()

                    NavigationLink(destination: AccountView().navigationBarBackButtonHidden(true)) {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .foregroundColor(Color("LapizLazuli"))
                            .frame(width: 40, height: 40)
                            .scaledToFit()
                    }
                    Spacer()
                }
                .padding(.bottom, 10)
            }
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}

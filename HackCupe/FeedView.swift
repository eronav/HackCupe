    import SwiftUI

    struct FeedView: View {
        @EnvironmentObject var feed: Feeds
        
        var body: some View {
            NavigationView {
                VStack {
                    HStack {
                        Text("Feed")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.horizontal, 25)
                        Spacer()
                        NavigationLink(destination: NewFeedView()) {
                            Image(systemName:"plus")
                                .padding(.horizontal, 25)
                                
                        }
                    }
                    .padding(.bottom, 25)
                    
                    List {
                        ForEach(feed.feeds) { f in
                            VStack(alignment: .leading, spacing: 10) {
                                Text(f.title)
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text(f.description)
                                    .font(.body)
                                    .foregroundColor(Color("RichBlack"))
                            }
                            .padding()
                            .background(Color("LightBlue"))
                            .cornerRadius(8)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                        }.listRowBackground(Color("LapizLazuli"))
                    }
                    .frame(maxHeight: .infinity)
                    
                    Spacer()
                    Spacer()

                    HStack {
                        Spacer()
                        NavigationLink(destination: QandAView().navigationBarBackButtonHidden(true)) {
                            Image(systemName: "magnifyingglass.circle.fill")
                                .resizable()
                                .foregroundColor(Color("SteelBlue"))
                                .frame(width: 40, height: 40)
                                .scaledToFit()
                        }
                        Spacer()
                        NavigationLink(destination: HomePageView().navigationBarBackButtonHidden(true)) {
                            Image(systemName: "house.fill")
                                .resizable()
                                .foregroundColor(Color("SteelBlue"))
                                .frame(width: 40, height: 40)
                                .scaledToFit()
                        }
                        Spacer()
                        Image(systemName: "text.bubble")
                            .resizable()
                            .foregroundColor(Color("SteelBlue"))
                            .frame(width: 40, height: 40)
                            .scaledToFit()
                        Spacer()
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
                .onAppear {
                    feed.feeds.insert(Feed(), at: 0)
                    feed.feeds.remove(at: 0)
                }
            }
        }
    }

    struct FeedView_Previews: PreviewProvider {
        static var previews: some View {
            FeedView()
        }
    }

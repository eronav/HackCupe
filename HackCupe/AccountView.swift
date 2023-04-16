import SwiftUI

struct AccountView: View {
    @State private var toggleState = [Bool](repeating: false, count: 10)
    let interests = ["Literature", "Math", "Science", "History", "Language", "Art", "Music", "Sports", "Technology", "Cooking"]
    
    @State private var signOut = false
    
    @State private var userTags: [Tag] = []
    @State private var totalTags: [Tag] = Tag.allTags
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Account")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.horizontal, 25)
                    Spacer()
                    NavigationLink(destination: SignInView().navigationBarBackButtonHidden(true), isActive: $signOut) {
                        EmptyView()
                    }
                    Button(action: {
                        Accounts2.USERNAME = "invalid"
                        Accounts2.PASSWORD = "invalid"
                        signOut = true
                    }) {
                        Text("Sign out")
                            .foregroundColor(Color.red)
                            .font(.system(size: 20))
                    }
                    .padding(.horizontal, 25)
                }
                .padding(.bottom, 25)

                VStack(alignment: .center, spacing: 10) {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .foregroundColor(Color("SteelBlue"))
                    Text(Accounts2.USERNAME)
                        .font(.system(size: 30))
                        .fontWeight(.bold)

                    Text("Interests")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                }.padding(.horizontal)

                HStack {
                    List {
                        Section {
                            ForEach(userTags) { tag in
                                Text(tag.val.uppercased())
                                    .onTapGesture {
                                        userTags = userTags.filter() {
                                            $0.val != tag.val
                                        }
                                        totalTags.insert(tag, at: 0)
                                    }
                            }
                        } header: {
                            Text("Your Tags")
                                .font(.headline)
                                .foregroundColor(Color("RichBlack"))
                        }
                    }
                    List {
                        Section {
                            ForEach(totalTags) { tag in
                                Text(tag.val.uppercased())
                                    .onTapGesture {
                                        totalTags = totalTags.filter() {
                                            $0.val != tag.val
                                        }
                                        userTags.insert(tag, at: 0)
                                    }
                            }
                        } header: {
                            Text("All Tags")
                                .font(.headline)
                                .foregroundColor(Color("RichBlack"))
                        }
                    }
                }
                .scrollContentBackground(.hidden)
                .listStyle(InsetGroupedListStyle())
                .padding(.horizontal)
                
                Group {
                    Spacer()
                        .padding(.top, 10)
                }
                
                HStack {
                    Spacer()
                    NavigationLink(destination: QandAView().navigationBarBackButtonHidden(true)) {
                        Image(systemName: "magnifyingglass.circle.fill")
                            .resizable()
                            .foregroundColor(Color("SteelBlue"))
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
                    NavigationLink(destination: AccountView()) {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .foregroundColor(Color("SteelBlue"))
                            .frame(width: 40, height: 40)
                            .scaledToFit()
                    }
                    Spacer()
                    
                }
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

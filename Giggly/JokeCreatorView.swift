import SwiftUI

struct JokeCreatorView: View {
    @ObservedObject var jokeCreator: JokeCreator
    @State private var isModalPresented = false
    @State private var selectedJoke: Joke? = nil // Added state to track the selected joke
    @State private var selectedTitle: String? = nil // Added state to track the selected joke title
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Wallpaper")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
                    .edgesIgnoringSafeArea(.all)
                    .overlay(
                        Color.black.opacity(0.4)
                    )
                
                VStack(alignment: .center) {
                    Text("Joke Creator")
                        .font(.custom("Avenir Next", size: 36))
                        .fontWeight(.bold)
                        .foregroundColor(Color(.systemTeal))
                        .padding(.top, 100.0)
                        .shadow(color: Color.white, radius: 1, x: 1, y: 1)
                    
                    List(jokeCreator.getJokes(), id: \.id) { joke in
                        Button(action: {
                            selectedTitle = joke.text
                            selectedJoke = joke
                            isModalPresented = true
                        }) {
                            Text(joke.text)
                                .font(.custom("Avenir Next", size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(8)
                                .background(Color(.systemPurple))
                                .cornerRadius(10)
                        }
                    }
                    .listStyle(PlainListStyle())
                    .padding([.leading, .trailing], 20)
                    
                    Spacer()
                    
                    Button(action: {
                        isModalPresented = true
                    }) {
                        Text("Add Joke")
                            .font(.custom("Avenir Next", size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(isModalPresented ? Color(.systemPurple) : Color(.systemTeal))
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.3), radius: 2, x: 0, y: 2)
                    }
                    .padding(.bottom, 100)
                    .sheet(isPresented: $isModalPresented) {
                        if let selectedTitle = selectedTitle, let joke = selectedJoke {
                            JokeDetailModalView(title: selectedTitle, jokeText: joke.text, isModalPresented: $isModalPresented)
                        } else {
                            AddJokeView(jokeCreator: jokeCreator, isModalPresented: $isModalPresented)
                        }
                    }
                }
                .navigationBarHidden(true)
            }
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct JokeCreatorView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import SwiftUI

struct JokeDetailView: View {
    var joke: Joke
    @Binding var isModalPresented: Bool
    
    var body: some View {
        VStack {
            Text("Joke Title: \(joke.text)")
                .font(.title)
                .font(.custom("Avenir Next", size: 20))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
            
            Text("Joke Text: \(joke.text)")
                .font(.body)
                .padding()
                .font(.custom("Avenir Next", size: 20))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Button("Close") {
                isModalPresented = false
            }
            .padding()
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

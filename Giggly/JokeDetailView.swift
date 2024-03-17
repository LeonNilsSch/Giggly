import SwiftUI

struct JokeDetailView: View {
    var joke: Joke
    @Binding var isModalPresented: Bool
    
    var body: some View {
        VStack {
            Text("Joke Title: \(joke.text)")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            Text("Joke Text: \(joke.text)")
                .font(.body)
                .padding()
            
            Button("Close") {
                isModalPresented = false
            }
            .padding()
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

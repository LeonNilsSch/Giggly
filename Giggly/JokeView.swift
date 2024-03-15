import SwiftUI

struct JokeView: View {
    var joke: String
    
    var body: some View {
        Text(joke)
            .font(.custom("Avenir Next", size: 24))
            .fontWeight(.bold)
            .foregroundColor(Color(.label))
            .multilineTextAlignment(.center)
            .padding()
    }
}

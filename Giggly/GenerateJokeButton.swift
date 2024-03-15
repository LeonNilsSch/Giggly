import SwiftUI

struct GenerateJokeButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("Generate Joke")
                .font(.custom("Avenir Next", size: 20))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                .background(Color(.systemTeal))
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3), radius: 2, x: 0, y: 2)
        }
    }
}

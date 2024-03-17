import SwiftUI

struct JokeDetailModalView: View {
    var title: String
    var jokeText: String
    @Binding var isModalPresented: Bool
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
                .font(.custom("Avenir Next", size: 20))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
            
            Text(jokeText)
                .font(.title)
                .font(.custom("Avenir Next", size: 20))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
            
            Button("Close") {
                isModalPresented = false
            }
            .font(.custom("Avenir Next", size: 20))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding()
            .background(isModalPresented ? Color(.systemPurple) : Color(.systemTeal))
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.3), radius: 2, x: 0, y: 2)
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

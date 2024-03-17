// JokeCreationView.swift
import SwiftUI

struct JokeCreationView: View {
    @ObservedObject var jokeCreator: JokeCreator
    @State private var newJoke = ""
    
    var body: some View {
        VStack {
            TextField("Enter a new joke", text: $newJoke)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                jokeCreator.addJoke(newJoke)
                newJoke = ""
            }) {
                Text("Add Joke")
                    .font(.custom("Avenir Next", size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(.systemTeal))
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.3), radius: 2, x: 0, y: 2)
            }
            .padding(.bottom, 40)
        }
        .navigationBarTitle("Create Joke")
    }
}

struct JokeCreationView_Previews: PreviewProvider {
    static var previews: some View {
        JokeCreationView(jokeCreator: JokeCreator())
    }
}

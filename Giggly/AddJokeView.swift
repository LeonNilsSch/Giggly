// AddJokeView.swift
import SwiftUI

struct AddJokeView: View {
    @ObservedObject var jokeCreator: JokeCreator
    @Binding var isModalPresented: Bool
    @State private var newJoke = ""
    @State private var jokeTitle = ""
    
    var body: some View {
        VStack {
            Text("Create a New Joke")
                .font(.custom("Avenir Next", size: 24))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.top, 20)
            
            TextField("Joke Title", text: $jokeTitle)
                .font(.custom("Avenir Next", size: 24))
                .padding()
                .fontWeight(.bold)
                .background(Color(.systemTeal))
                .cornerRadius(10)
                .foregroundColor(.white) // Set font color to white

            TextField("Enter a new joke", text: $newJoke)
                .font(.custom("Avenir Next", size: 24))
                .padding()
                .fontWeight(.bold)
                .background(Color(.systemTeal))
                .cornerRadius(10)
                .foregroundColor(.white) // Set font color to white

            Button(action: {
                guard !newJoke.isEmpty else { return } // Ensure newJoke is not empty
                jokeCreator.addJoke(newJoke) // Add the new joke text
                newJoke = "" // Clear the text field
                isModalPresented = false // Dismiss the modal
            }) {
                Text("Add Joke")
                    .font(.custom("Avenir Next", size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(.systemTeal))
                    .cornerRadius(10)
            }
            .padding(.top, 20)
        }
        .padding()
        .background(Color(.systemPurple))
        .cornerRadius(20)
        .padding(20)
        
    }
}

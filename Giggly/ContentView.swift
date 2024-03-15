// ContentView.swift
import SwiftUI

struct ContentView: View {
    @StateObject var jokeCreator = JokeCreator()
    @State private var joke = ""

    var body: some View {
        NavigationView {
            VStack {
                Text("Giggly")
                    .font(.custom("Avenir Next", size: 36))
                    .fontWeight(.bold)
                    .foregroundColor(Color(.systemTeal))
                    .shadow(color: Color.black.opacity(0.3), radius: 2, x: 0, y: 2)
                    .padding(.top, 40)
                
                Spacer()
                
                Text(joke)
                    .font(.custom("Avenir Next", size: 24))
                    .fontWeight(.bold)
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                Button(action: {
                    generateJoke()
                }) {
                    Text("Lass uns gigglen!")
                        .font(.custom("Avenir Next", size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(.systemPurple))
                        .cornerRadius(10)
                }
                .padding(.bottom, 20)
                
                NavigationLink(
                    destination: JokeCreatorView(jokeCreator: JokeCreator()),
                    label: {
                        Text("Create a New Giggle")
                            .font(.custom("Avenir Next", size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(.systemTeal))
                            .cornerRadius(10)
                    })
                
                Spacer()
            }
            .padding()
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
    
    func generateJoke() {
        joke = jokes.randomElement() ?? "No joke available"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

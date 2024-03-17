// ContentView.swift
import SwiftUI

struct ContentView: View {
    @StateObject var jokeCreator = JokeCreator()
    @State private var joke = ""

    var body: some View {
        NavigationView {
            ZStack {
                // Wallpaper
                Image("Wallpaper")
                    .renderingMode(.original) // Change "Wallpaper" to the name of your image asset
                    .resizable(resizingMode: .tile)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
                    .edgesIgnoringSafeArea(.all)
                    .overlay(
                        Color.black.opacity(0.2)
                            .edgesIgnoringSafeArea(.all) // Ensure the overlay covers the entire view
                    )
                
                VStack {
                    Text("Giggly")
                        .font(.custom("Avenir Next", size: 36))
                        .fontWeight(.bold)
                        .foregroundColor(Color(.systemTeal))
                        .frame(height: nil)
                        .shadow(color: Color.white, radius: 1, x: 1, y: 1)
                        .padding(.top, 85.0)
                    
                    Spacer()
                    
                    Text(joke)
                        .font(.custom("Avenir Next", size: 26))
                        .fontWeight(.bold)
                        .foregroundColor(Color(.white))
                        .multilineTextAlignment(.center)
                        .padding([.top, .leading, .trailing], 50.0)
                    
                    Spacer()
                    
                    Button(action: {
                        generateJoke()
                    }) {
                        Text("Let's giggle!")
                            .font(.custom("Avenir Next", size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(.systemPurple))
                            .cornerRadius(10)
                    }
                    .padding(.vertical)
                    
                    NavigationLink(
                        destination: JokeCreatorView(jokeCreator: JokeCreator()),
                        label: {
                            Text("Create a Giggle  -->")
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
            }
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

import Foundation
import SwiftUI

class JokeViewModel: ObservableObject {
    @Published var joke: String = ""
    
    func generateJoke() {
        let jokes = [
            "Why don't scientists trust atoms? Because they make up everything!",
            "Parallel lines have so much in common. It’s a shame they’ll never meet.",
            "I told my wife she was drawing her eyebrows too high. She looked surprised.",
            // Add more jokes here...
        ]
        
        joke = jokes.randomElement() ?? "No joke available"
    }
}

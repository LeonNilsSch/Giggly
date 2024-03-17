import Foundation
import Combine

class JokeCreator: ObservableObject {
    @Published var jokes: [Joke] = []

    func addJoke(_ text: String) {
        let joke = Joke(text: text)
        jokes.append(joke)
    }
    
    func getJokes() -> [Joke] {
        return jokes
    }
}

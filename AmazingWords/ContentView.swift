
import SwiftUI

    struct ContentView: View {
        @State private var words = ["SWIFT", "HANGMAN", "APPLE", "CODE", "DEVELOPER", "VARIABLES", "CONSTANTS", "TYPES", "INTEGER", "DOUBLE", "BOOLEAN", "STRING", "COMMENTS", "BASIC OPERATORS", "CONDITIONALS", "FUNCTIONS", "ARRAYS", "LOOPS", "STRUCTS", "ENUMS", "OPTIONALS", "CLASSES", "INHERITANCE"]
        @State private var currentWord = ""
        @State private var displayedWord = ""
        @State private var guessedLetters = Set<Character>()
        @State private var attemptsLeft = 7
        
        init() {
            startNewGame()
        }
        
        func startNewGame() {
            if let randomWord = words.randomElement() {
                currentWord = randomWord
                displayedWord = String(repeating: "_", count: currentWord.count)
                guessedLetters.removeAll()
                attemptsLeft = 7
               
            }
        }
        
        func processGuess(letter: Character) {
            if guessedLetters.contains(letter) || attemptsLeft == 0 {
                return
            }
            guessedLetters.insert(letter)
            
            if currentWord.contains(letter) {
                var updatedWord = Array(displayedWord)
                for (index, char) in currentWord.enumerated() {
                    if char == letter {
                        updatedWord[index] = letter
                    }
                }
                displayedWord = String(updatedWord)
            } else {
                attemptsLeft -= 1
            }
        }
        
        var body: some View {
            ZStack {
                Image(.paperBackground)
                VStack {
                    Text("AMAZING WORDS")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.yellow)
                    
                    Text(displayedWord)
                        .font(.system(size: 40, weight: .bold, design: .monospaced))
                        .padding()
                    
                    Text("Attempts Left: \(attemptsLeft)")
                        .font(.title)
                        .padding()
                        
                    ZStack {
                        Image(.whiteBackground)
                            .resizable()
                            .scaledToFit()
                        Image("BittenApple_Full")
                            .resizable()
                            .scaledToFit()
                    }
                  
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 7)) {
                        ForEach(Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ"), id: \.self) { letter in
                            
                            Button(action: {
                                processGuess(letter: letter)
                            }) {
                                Text(String(letter))
                                    .font(.title2)
                                    .frame(width: 40, height: 40)
                                    .background(guessedLetters.contains(letter) ? Color.green : Color.gray)
                                    .foregroundColor(.white)
                                    .clipShape(Circle())
                            }
                            .disabled(guessedLetters.contains(letter) || attemptsLeft == 0)
                        }
                    }
                    .padding()
                    
                    if displayedWord == currentWord {
                        Text("Amazing")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                        //.padding()
                        Text("You Win!")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                        // .padding()
                    } else if attemptsLeft == 0 {
                        Text("Game Over! Word was \(currentWord)")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                            .padding()
                    }
                    
                    Button("New Game", action: startNewGame)
                        .font(.title)
                        .padding()
                        .background(Color.yellow)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
            }
        }
    }

#Preview {
    ContentView()
}


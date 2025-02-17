//
//  SwiftUIView.swift
//  AmazingWords
//
//  Created by Ronald Smith on 2/15/25.
//

import SwiftUI

struct CreateWordView: View {
    @State private var inputText: String = ""
    let columns = Array(repeating: GridItem(.flexible()), count: 7)
    
    var body: some View {
        ZStack {
            Image(.paperBackground)
                .resizable()
                .scaledToFit()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(.createAWordButton)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .padding(.top, 50)
                
                TextField("Enter your word", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .frame(maxWidth: 300)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                
                Button(action: {
                    startNewGame(with: inputText)
                }) {
                    Image(.enterButton)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 80)
                        .padding(.bottom, 20)
                }
                
                Spacer()
                
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ"), id: \ .self) { letter in
                        Button(action: {
                            processGuess(letter: letter)
                        }) {
                            Text(String(letter))
                                .font(.title)
                                .frame(width: 40, height: 40)
                                .background(Color.gray)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        }
                    }
                }
                .padding(.bottom, 50)
            }
        }
    }
    
    func processGuess(letter: Character) {
        inputText.append(letter)
    }
    
    func startNewGame(with word: String) {
        // Implement new game logic with the input word
    }
}

struct CreateWordView_Previews: PreviewProvider {
    static var previews: some View {
        CreateWordView()
    }
}

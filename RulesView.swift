//
//  RulesView.swift
//  AmazingWords
//
//  Created by Ronald Smith on 2/17/25.
//

import SwiftUI

struct RulesView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Image("paperBackground")
                .resizable()
                .ignoresSafeArea()
            
            Image("greyedOutScreen")
                .resizable()
                .ignoresSafeArea()
                .opacity(0.5)
            
            VStack {
                ZStack {
                    Image("rulesGrayBackground")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 400)
                    
                    Text("Hangman Rules:\n1. A word is chosen at random.\n2. Players guess letters one at a time.\n3. Incorrect guesses add a bite is taken from the apple.\n4. The game ends when the word is guessed or the apple is complete.")
                        .font(.custom("Times New Roman", size: 12))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding()
                }
                .overlay(
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("closeButton")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    .position(x: 320, y: 20)
                )
            }
        }
    }
}

//struct ContentView: View {
//    @State private var showRules = false
//    
//    var body: some View {
//        ZStack {
//            Button(action: {
//                showRules.toggle()
//            }) {
//                Image("infoButton")
//                    .resizable()
//                    .frame(width: 50, height: 50)
//            }
//        }
//        .fullScreenCover(isPresented: $showRules) {
//            RulesView()
//        }
//    }
//}

//#Preview {
//    RulesView(presentationMode: )
//}

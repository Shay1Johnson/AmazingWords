//
//  LoserScreen.swift
//  AmazingWords
//
//  Created by Ronald Smith on 2/15/25.
//

import SwiftUI

struct LoserScreenView: View {
    var body: some View {
        ZStack {
            Image(.paperBackground)
                .resizable()
                .scaledToFit()
            
            Image(.winnerScreen)
                .resizable()
                .scaledToFit()
            
            VStack(spacing: 20) {
                Button(action: {
                    // Action to go to a new word
                }) {
                    Image(.redContinueButton)
                        .resizable()
                        .scaledToFit()
                        .padding()
                }
                
                Button(action: {
                    // Action to go to PlayersView
                }) {
                    Image(.goldQuitButton)
                        .resizable()
                        .scaledToFit()
                        .padding()
                }
            }
            .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height * 0.65)
        }
    }
}

struct WerScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WinnerScreenView()
    }
}

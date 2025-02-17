//
//  TryOut.swift
//  AmazingWords
//
//  Created by Ronald Smith on 2/15/25.
//

import SwiftUI

struct WinnerScreenView: View {
    var body: some View {
        ZStack {
            Image(.paperBackground)
                .resizable()
                .scaledToFit()
            
            Image(.winnerScreen)
                .resizable()
                .scaledToFit()
               // .edgesIgnoringSafeArea(.all)
            
//            Text("Aww Man Try Again")
//                .font(.largeTitle)
//                .fontWeight(.bold)
//                .foregroundColor(.red)
//                .multilineTextAlignment(.center)
//                .shadow(radius: 2)
                
            VStack(spacing: -30) {
                Image(.redContinueButton)
                    .resizable()
                    .scaledToFit()
                   // .frame(width: 200, height: 80) // Adjust size as needed
                    .padding()
                
                Image(.goldQuitButton)
                    .resizable()
                    .scaledToFit()
                   // .frame(width: 200, height: 80) // Adjust size as needed
            }
            .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height * 0.75)
        }
    }
}

struct WinnerScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WinnerScreenView()
    }
}

//
//  SwiftUIView.swift
//  AmazingWords
//
//  Created by Lydia West on 2/10/25.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
        ZStack {
            Image(.paperBackground)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                Image("AWLogoPlayerScreen")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100) // Adjust height as needed
                    .padding(.top, 50) // Moves it toward upper middle
                
                ZStack {
                    Image(.whiteBackground)
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(0.75)
                        .padding()
                    
                    Image("BittenApple_Full")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 150)
                        .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 4)
                    
                    
                }
                
                Spacer()
                
                VStack(spacing: 20) {
                    NavigationLink(destination: Categories()) {
                        Image("1PlayerButton")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50)
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        // 2 Player action
                    }) {
                        Image("2PlayerButton")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50)
                            .cornerRadius(10)
                    }
                }
                .padding(.bottom, 50)
            }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        // Info button action
                    }) {
                        Image("InfoButton")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40) // Adjust size as needed
                    }
                    .padding(.trailing, 20)
                    .padding(.bottom, 20)
                }
            }
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

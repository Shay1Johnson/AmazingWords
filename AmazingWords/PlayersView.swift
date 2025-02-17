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
                            .background(Color(hex: "E02020"))
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        // 2 Player action
                    }) {
                        Image("2PlayerButton")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50)
                            .background(Color(hex: "2700FF"))
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
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var hexNumber: UInt64 = 0
        if scanner.scanHexInt64(&hexNumber) {
            let r = Double((hexNumber & 0xff0000) >> 16) / 255.0
            let g = Double((hexNumber & 0x00ff00) >> 8) / 255.0
            let b = Double(hexNumber & 0x0000ff) / 255.0
            self.init(red: r, green: g, blue: b)
        } else {
            self.init(.black)
        }
    }
}
    }
}

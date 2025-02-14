//
//  SwiftUIView.swift
//  AmazingWords
//
//  Created by Lydia West on 2/10/25.
//

import SwiftUI

struct PlayersView: View {
    var body: some View {
        ZStack {
            Image("paperBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    Image("AnimationScreenLogo")
                    
                    ZStack {
                        Image("whiteBackground")
                            .resizable()
                            .scaledToFit()
                        
                        Image("appleImages")
                            .resizable()
                            .scaledToFit()
                    }
                }
                
                Spacer()
                
                VStack(spacing: 20) {
                    Button(action: {
                        // 1 Player action
                    }) {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  NewScreen.swift
//  AmazingWords
//
//  Created by Ronald Smith on 2/15/25.
//
import SwiftUI

struct FlipBookView: View {
    @State private var scale: CGFloat = 0.5
    @State private var rotation: Double = 0
    @State private var navigate = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image(.paperBackground)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                Image(.animationScreenLogo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .scaleEffect(scale)
                    .rotationEffect(.degrees(rotation))
                    .onAppear {
                        withAnimation(.easeInOut(duration: 1)) {
                            scale = 1.0
                        }
                        withAnimation(.linear(duration: 2)) {
                            rotation = 720
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            navigate = true
                        }
                    }
                }
            }
        }
    }
//}

struct PlayersView: View {
    var body: some View {
        Text("Player View Screen")
            .font(.largeTitle)
            .bold()
    }
}

struct FlipBookView_Previews: PreviewProvider {
    static var previews: some View {
        FlipBookView()
    }
}

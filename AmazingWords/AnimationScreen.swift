//
//  HomeScreen.swift
//  AmazingWords
//
//  Created by Ronald Smith on 2/12/25.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ZStack {
            Image(.paperBackground)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()  // Ensures it covers the screen

            LoadingContent() // Places spinning logo on top
        }
    }
}

struct LoadingContent: View {
    @State private var degreesRotating = 0.0
    
    var body: some View {
        Image("AnimationScreenLogo")
            //.resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .rotationEffect(.degrees(degreesRotating))
            .onAppear {
                withAnimation(Animation.linear(duration: 2).repeatForever(autoreverses: false)) {
                    degreesRotating = 360.0
                }
            }
    }
}

#Preview {
    HomeScreen()
}


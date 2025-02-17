//
//  BittenApplesAnimation.swift
//  AmazingWords
//
//  Created by Ronald Smith on 2/15/25.
//

import SwiftUI

struct FlipbookView: View {
    let images = [
        "BittenApple_Full",
        "BittenApple_1",
        "BittenApple_2",
        "BittenApple_3",
        "BittenApple_4",
        "BittenApple_5",
        "BittenApple_6"
    ]
    
    @State private var currentIndex = 0
    
    var body: some View {
        Image(images[currentIndex])
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
            .onAppear {
                startFlipbookAnimation()
            }
    }
    
    func startFlipbookAnimation() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            withAnimation {
                currentIndex = (currentIndex + 1) % images.count
            }
        }
    }
}

struct FlipbookView_Previews: PreviewProvider {
    static var previews: some View {
        FlipbookView()
    }
}

//
//  ContentView.swift
//  Animations
//
//  Created by Alonso Acosta Enriquez on 17/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationScale = 1.0
    
    var body: some View {
        Button("Tap me") {
//            animationScale += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationScale)
                .opacity(2 - animationScale)
                .animation(
                    .easeOut(duration: 1)
                        // modifier of the Animation Struct
                        .repeatForever(autoreverses: false),
                    value: animationScale
                )
        )
        .onAppear {
            animationScale = 2
        }
    }
}

#Preview {
    ContentView()
}

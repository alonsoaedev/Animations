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
            animationScale += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationScale)
        .blur(radius: (animationScale - 1) * 3)
        .animation(.default, value: animationScale)
    }
}

#Preview {
    ContentView()
}

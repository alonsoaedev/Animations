//
//  ContentView.swift
//  Animations
//
//  Created by Alonso Acosta Enriquez on 17/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var enabled = false
    
    var body: some View {
        Button("Tap me") {
            withAnimation(.spring(duration: 1, bounce: 0.5)) {
                enabled.toggle()
            }
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .foregroundStyle(.white)
        .animation(nil, value: enabled) // this will animate all the above modifiers
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(.spring(duration: 1, bounce: 0.9), value: enabled) // this will animate until the last animation
    }
}

#Preview {
    ContentView()
}

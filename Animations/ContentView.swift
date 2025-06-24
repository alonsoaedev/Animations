//
//  ContentView.swift
//  Animations
//
//  Created by Alonso Acosta Enriquez on 17/08/24.
//

import SwiftUI

struct ContentView: View {
    let letters = Array("Hello swiftUI")
    
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count, id: \.self) { number in
                Text(String(letters[number]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .offset(dragAmount)
                    .animation(
                        .linear.delay(Double(number) / 20),
                        value: dragAmount
                    )
            }
        }
        .gesture(
            DragGesture()
                .onChanged { value in
                    self.dragAmount = value.translation
                }
                .onEnded { value in
                    self.dragAmount = .zero
                    self.enabled.toggle()
                }
        )
    }
}

#Preview {
    ContentView()
}

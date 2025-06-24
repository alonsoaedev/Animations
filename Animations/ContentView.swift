//
//  ContentView.swift
//  Animations
//
//  Created by Alonso Acosta Enriquez on 17/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var dragAmount = CGSize.zero
    var body: some View {
        LinearGradient(
            colors: [.yellow, .red],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .frame(width: 300, height: 200)
        .clipShape(.rect(cornerRadius: 10))
        .offset(dragAmount)
        .gesture(
            DragGesture()
                .onChanged { value in
                    self.dragAmount = value.translation
                }
                .onEnded { _ in
                    withAnimation(.bouncy) {
                        self.dragAmount = .zero
                    }
                }
        )
//        .animation(.bouncy, value: dragAmount) // will animate the whole drag gesture
    }
}

#Preview {
    ContentView()
}

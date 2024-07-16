//
//  ContentView.swift
//  Memorize
//
//  Created by Lucas Mafra Pinheiro on 15/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .padding()
        .foregroundColor(.orange)
    }
    
}

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 6)
                Text("👻").imageScale(.large)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
        })
    }
}





















#Preview {
    ContentView()
}

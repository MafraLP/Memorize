//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Lucas Mafra Pinheiro on 15/07/24.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}

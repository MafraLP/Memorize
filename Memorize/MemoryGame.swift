//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Lucas Mafra Pinheiro on 18/07/24.
//

import Foundation

struct MemoryGame<CardContent> {
    var Cards: Array<Card>
    
    func choose(card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}

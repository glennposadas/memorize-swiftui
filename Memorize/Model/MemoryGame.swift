//
//  MemoryGame.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/14/20.
//

import Foundation

struct MemoryGame<T> {
    
    var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: T
    }
}

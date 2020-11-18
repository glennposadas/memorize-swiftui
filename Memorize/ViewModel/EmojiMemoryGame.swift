//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/14/20.
//

import SwiftUI

class EmojiMemoryGame {
    
    // MARK: - Properties
    
    private var model: MemoryGame<String>
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        self.model.cards
    }
    
    // MARK: - Intents
    
    func choose(_ card: MemoryGame<String>.Card) {
        self.model.choose(card)
    }
    
    // MARK: Functions
}

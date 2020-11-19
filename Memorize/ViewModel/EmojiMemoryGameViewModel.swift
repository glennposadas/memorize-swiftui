//
//  EmojiMemoryGameViewModel.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/14/20.
//

import SwiftUI

class EmojiMemoryGameViewModel {
    
    // MARK: - Properties
    
    private lazy var model: MemoryGame<String> = self.createMemoryGame()
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        self.model.cards
    }
    
    // MARK: - Intents
    
    func choose(_ card: MemoryGame<String>.Card) {
        self.model.choose(card)
    }
    
    // MARK: Functions
    
    func createMemoryGame() -> MemoryGame<String> {
        let emojis: [String] = [
            "🔥",
            "😫",
            "😡",
            "💦",
            "🇵🇭"
        ]
        
        return MemoryGame<String>(numberOfPairOfCards: 2) { index in
            return emojis[index]
        }
    }
}

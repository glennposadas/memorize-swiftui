//
//  GameViewModel.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/14/20.
//

import SwiftUI

class GameViewModel: ObservableObject {
    
    // MARK: - Properties
    
    @Published private var model: MemoryGame<String> = GameViewModel.createMemoryGame()
        
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        self.model.cards
    }
    
    // MARK: - Init
    
    init() {
        print("init vm")
    }
    
    // MARK: - Intents
    
    func choose(_ card: MemoryGame<String>.Card) {
        objectWillChange.send()
        self.model.choose(card)
    }
    
    // MARK: Functions
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: [String] = [
            "🔥",
            "😫",
            "😡",
            "💦",
            "🇵🇭"
        ]
        
        return MemoryGame<String>(numberOfPairOfCards: emojis.count) { index in
            return emojis[index]
        }
    }
}

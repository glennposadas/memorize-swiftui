//
//  MemoryGame.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/14/20.
//

import Foundation

struct MemoryGame<T> {
    
    var cards: Array<Card>
    
    init(numberOfPairOfCards: Int) {
        self.cards = [Card]()
        
        for pair in 0..<numberOfPairOfCards {
            let newCard = Card(isFaceUp: <#T##Bool#>, isMatched: <#T##Bool#>, content: <#T##T#>)
            self.cards.append(newCard)
        }
    }
    
    func choose(_ card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: T
    }
}

//
//  MemoryGame.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/14/20.
//

import Foundation

struct MemoryGame<T> {
    
    var cards: Array<Card>
    
    init(numberOfPairOfCards: Int, contentCardFactory: (Int) -> T) {
        self.cards = [Card]()
        
        for index in 0..<numberOfPairOfCards {
            let content = contentCardFactory(index)
            let newCard = Card(isFaceUp: false, isMatched: false, content: content)
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

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
            
            let newCard = Card(id: index*2, content: content)
            self.cards.append(newCard)
        }
    }
    
    mutating func choose(_ card: Card) {
        print("Card chosen: \(card)")
        let index = self.index(of: card)
        self.cards[index].isFaceUp.toggle()
    }
    
    func index(of card: Card) -> Int {
        for index in 0..<self.cards.count {
            if self.cards[index].id == card.id {
                return index
            }
        }
        
        return -1
    }
    
    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: T
    }
}

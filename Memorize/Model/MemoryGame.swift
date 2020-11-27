//
//  MemoryGame.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/14/20.
//

import Foundation

struct MemoryGame<T: Equatable> {
    
    // MARK: - Properties
    
    var cards: Array<Card>
    var indexOfTheOneAndOnlyFaceUpCard: Int? {
        get {
           var faceUpCardIndices = [Int]()
            for index in cards.indices {
                if cards[index].isFaceUp {
                    faceUpCardIndices.append(index)
                }
            }
            
            if faceUpCardIndices.count == 1 {
                return faceUpCardIndices.first
            } else {
                return nil
            }
        } set {
            for index in cards.indices {
                cards[index].isFaceUp = index == newValue
            }
        }
    }
    
    // MARK: - Functions
    // MARK: Init
    
    init(numberOfPairOfCards: Int, contentCardFactory: (Int) -> T) {
        cards = [Card]()
        
        for index in 0..<numberOfPairOfCards {
            let content = contentCardFactory(index)
            
            let newCard = Card(id: index*2, content: content)
            cards.append(newCard)
        }
    }
    
    mutating func choose(_ card: Card) {
        print("Card chosen: \(card)")
        if let chosenIndex = cards.firstIndex(matching: card),
           !cards[chosenIndex].isFaceUp,
           !cards[chosenIndex].isMatched {
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                }
                
                cards[chosenIndex].isFaceUp = true

            } else {
                indexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
        }
    }

    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: T
    }
}

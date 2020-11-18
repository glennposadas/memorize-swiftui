//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/14/20.
//

import SwiftUI

class EmojiMemoryGame {
  
  // MARK: - Properties
  
  private(set) var model: MemoryGame<String>
  
  // MARK: - Intents
  
  func choose(_ card: MemoryGame<String>.Card) {
    self.model.choose(card)
  }
  
  // MARK: Functions
}

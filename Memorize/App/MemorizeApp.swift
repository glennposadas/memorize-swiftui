//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/13/20.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            GameScreenView(viewModel: self.game)
        }
    }
}

//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/13/20.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = GameViewModel()
    
    var body: some Scene {
        WindowGroup {
            GameScreenView(viewModel: self.game)
        }
    }
}

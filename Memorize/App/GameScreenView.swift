//
//  GameScreenView.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/13/20.
//

import SwiftUI

struct GameScreenView: View {
    
    // MARK: - Properties
    
    @ObservedObject var viewModel: EmojiMemoryGameViewModel
    
    // MARK: - Body
    
    var body: some View {
        Grid(self.viewModel.cards) { card
            CardView(card: card)
                .onTapGesture {
                    self.viewModel.choose(card)
                }
        }
        .padding()
        .foregroundColor(.orange)
        .font(Font.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView(viewModel: EmojiMemoryGameViewModel())
    }
}

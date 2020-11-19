//
//  GameScreenView.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/13/20.
//

import SwiftUI

struct GameScreenView: View {
    
    // MARK: - Properties
    
    var viewModel: EmojiMemoryGameViewModel
    
    // MARK: - Body
        
    var body: some View {
        HStack {
            ForEach(self.viewModel.cards) { card in
                CardView(card: card)
                    .onTapGesture {
                        self.viewModel.choose(card)
                    }
            }
        }
        .padding()
        .foregroundColor(.black)
        .font(Font.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView(viewModel: EmojiMemoryGameViewModel())   
    }
}

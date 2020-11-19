//
//  GameScreenView.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/13/20.
//

import SwiftUI

struct GameScreenView: View {
    
    // MARK: - Properties
    
    var viewModel: EmojiMemoryGame
    
    // MARK: - Body
        
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: false)
                    .onTapGesture(count: 1, perform: {
                        
                    })
            }
        }
        .padding()
        .foregroundColor(.black)
        .font(Font.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView(viewModel: EmojiMemoryGame())
    }
}

//
//  GameScreenView.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/13/20.
//

import SwiftUI

struct GameScreenView: View {
    
    // MARK: - Properties
    
    @ObservedObject var viewModel: GameViewModel
    
    // MARK: - Body
    
    var body: some View {
        Grid(viewModel.cards) { card in
            CardView(card: card)
                .onTapGesture {
                    viewModel.choose(card)
                }
                .padding(5)
        }
        .padding()
        .foregroundColor(.orange)
        .font(Font.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView(viewModel: GameViewModel())
    }
}

//
//  CardView.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/14/20.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - Properties
    
    var card: MemoryGame<String>.Card
    
    // MARK: - Body
    
    var body: some View {
        GeometryReader { reader in
            ZStack {
                if self.card.isFaceUp {
                    RoundedRectangle(cornerRadius: 10.0)
                        .fill(Color.white)
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(lineWidth: 3.0)
                    Text(self.card.content)
                } else {
                    RoundedRectangle(cornerRadius: 10.0)
                        .fill()
                }
            }
            .font(
                Font.system(size: min(reader.size.width, reader.size.height)  * 0.8)
            )
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGame<String>.Card(
            id: 1,
            isFaceUp: true,
            isMatched: false,
            content: "🇵🇭"
        )
        )
        .frame(width: 100, height: 100, alignment: .center)
    }
}

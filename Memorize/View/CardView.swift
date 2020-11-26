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
    
    // MARK: - Drawing Constants
    
    let cornerRadius: CGFloat = 10
    let edgeLineWidth: CGFloat = 10
  let fontScaleFactor: CGFloat = 0.75
    
    // MARK: - Body
    
    var body: some View {
        GeometryReader { reader in
            ZStack {
                if self.card.isFaceUp {
                    RoundedRectangle(cornerRadius: self.cornerRadius)
                        .fill(Color.white)
                    RoundedRectangle(cornerRadius: self.cornerRadius)
                        .stroke(lineWidth: self.edgeLineWidth)
                    Text(self.card.content)
                } else {
                    RoundedRectangle(cornerRadius: self.cornerRadius)
                        .fill()
                }
            }
            .font(
                Font.system(size: min(reader.size.width, reader.size.height)  * self.fontScaleFactor)
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

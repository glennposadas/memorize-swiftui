//
//  CardView.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/14/20.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - Properties
    
    var isFaceUp: Bool = true
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 3.0)
                Text("🔥")
            } else {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill()
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(isFaceUp: false)
            .frame(width: 100, height: 100, alignment: .center)
    }
}

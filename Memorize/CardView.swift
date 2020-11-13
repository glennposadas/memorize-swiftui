//
//  CardView.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/14/20.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color.orange)
            RoundedRectangle(cornerRadius: 10.0)
                .stroke(lineWidth: 3.0)
            Text("🔥")
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .frame(width: 100, height: 100, alignment: .center)
    }
}

//
//  ContentView.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/13/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                ZStack {
                    RoundedRectangle(cornerRadius: 10.0)
                        .fill(Color.orange)
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(lineWidth: 3.0)
                    Text("🔥")
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
        ContentView()
    }
}

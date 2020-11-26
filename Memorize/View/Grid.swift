//
//  Grid.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/26/20.
//

import SwiftUI

struct Grid<Item, ItemView>: View {
    
    // MARK: - Properties
    
    var items: [Item]
    var viewForItem: (item) -> ItemView
    
    // MARK: - Body
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Grid()
    }
}

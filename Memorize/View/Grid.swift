//
//  Grid.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/26/20.
//

import SwiftUI

struct Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View {
    
    // MARK: - Properties
    
    var items: [Item]
    var viewForItem: (Item) -> ItemView
    
    // MARK: - Init
    
    init(_ items: [Item], viewForItem: @escaping (Item) -> ItemView) {
        self.items = items
        self.viewForItem = viewForItem
    }
    
    // MARK: - Body
    
    var body: some View {
        GeometryReader { geometry in
            body(for: geometry.size)
        }
    }
    
    func body(for size: CGSize) -> some View {
        ForEach(items) { item in
            body(for: item, in: size)
        }
    }
    
    func body(for item: Item, in size: CGSize) -> some View {
        viewForItem(item)
    }
 }

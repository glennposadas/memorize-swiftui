//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/27/20.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for (index, currentItem) in self.enumerated() {
            if matching.id == currentItem.id {
                return index
            }
        }
        
        return .none
    }
}

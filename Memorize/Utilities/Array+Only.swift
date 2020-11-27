//
//  Array+Only.swift
//  Memorize
//
//  Created by Glenn Posadas on 11/28/20.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}

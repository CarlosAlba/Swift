//
//  CardItem.swift
//  JumpCodeChallenge
//
//  Created by Alfredo Alba on 5/9/25.
//

import Foundation

struct CardItem: Identifiable {
    let id = UUID()
    let title: String
    var isFavorite: Bool = false
}

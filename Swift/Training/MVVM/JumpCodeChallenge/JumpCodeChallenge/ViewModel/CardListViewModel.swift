//
//  CardListViewModel.swift
//  JumpCodeChallenge
//
//  Created by Alfredo Alba on 5/9/25.
//

import Foundation

class CardListViewModel: ObservableObject {
    @Published var items: [CardItem]
    @Published var currentlyVisibleID: UUID?

    init() {
        self.items = (1...20).map {
            CardItem(title: "Item \($0)")
        }
    }
    
    func addNewItem() -> CardItem {
        let newItem = CardItem(title: "Item \(items.count + 1)")
        items.append(newItem)
        return newItem
    }

    func toggleFavorite(for item: CardItem) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index].isFavorite.toggle()
        }
    }
    
    func updateVisibleItem(to id: UUID) {
        currentlyVisibleID = id
    }
}

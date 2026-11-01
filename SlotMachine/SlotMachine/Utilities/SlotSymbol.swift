//
//  SlotSymbol.swift
//  SlotMachine
//
//  Created by Alfredo Alba on 11/1/26.
//

// Usage Example:
// let symbolImage = UIImage(named: SlotSymbol.cherry.imageName)

enum SlotSymbol: String, CaseIterable {
    case cherry = "cherry"
    case lemon = "lemon"
    case seven = "seven"
    case bell = "bell"
    case star = "star"
    case diamond = "diamond"
    
    var imageName: String {
        return self.rawValue
    }
    
    var payout: Int {
        switch self {
        case .cherry: return 2
        case .lemon: return 3
        case .seven: return 5
        case .bell: return 10
        case .star: return 15
        case .diamond: return 25
        }
    }
    
    var weight: Int {
        switch self {
        case .cherry, .lemon: return 30
        case .seven, .bell: return 20
        case .star: return 15
        case .diamond: return 5
        }
    }
}

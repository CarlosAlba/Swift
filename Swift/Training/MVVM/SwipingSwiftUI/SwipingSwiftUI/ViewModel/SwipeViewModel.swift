//
//  SwipeViewModel.swift
//  SwipingSwiftUI
//
//  Created by Alfredo Alba on 5/12/25.
//

import SwiftUI

class SwipeViewModel: ObservableObject {
    @Published var currentDirection: Direction? = nil
    
    func handleSwipe(_ direction: Direction) {
        currentDirection = direction
    }
    
    var backgroundColor: Color {
        switch currentDirection {
        case .up: return .blue
        case .down: return .red
        case .left: return .orange
        case .right: return .green
        case .none: return .white
        }
    }
}

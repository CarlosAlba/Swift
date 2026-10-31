//
//  MainViewModel.swift
//  SwipingSwift
//
//  Created by Alfredo Alba on 5/12/25.
//

final class MainViewModel {
    private(set) var currentDirection: Direction? = nil
    
    func handleSwipe(_ direction: Direction) -> String {
        currentDirection = direction
        return "You swiped \(direction)"
    }
}

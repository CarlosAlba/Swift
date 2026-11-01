//
//  SlotMachine.swift
//  SlotMachine
//
//  Created by Alfredo Alba on 11/1/26.
//

import SwiftUI
import Combine

@MainActor

final class SlotMachine: ObservableObject {
    @Published private(set) var displayedSymbols: [SlotSymbol]
    
    private var animationTask: Task<Void, Never>?
    
    init(symbols: [SlotSymbol]) {
        self.displayedSymbols = symbols
    }
    
    /// Function that generate the animation for the reel
    /// - Parameters:
    ///   - finalSymbols: Array of Symbols
    ///   - stopDelay: Control the animation delay
    func startSpinning(finalSymbols: [SlotSymbol], stopDelay: Double) {
        animationTask?.cancel()

        animationTask = Task { @MainActor in
            let start = ContinuousClock.now

            while !Task.isCancelled &&
                  start.duration(to: .now) <
                    .seconds(1.5 + stopDelay) {

                withAnimation(.linear(duration: 0.08)) {
                    displayedSymbols = (0..<3).map { _ in
                        SlotSymbol.allCases.randomElement()!
                    }
                }

                do {
                    try await Task.sleep(
                        for: .milliseconds(90)
                    )
                } catch {
                    return
                }
            }

            guard !Task.isCancelled else { return }

            withAnimation(.easeOut(duration: 0.25)) {
                displayedSymbols = finalSymbols
            }
        }
    }
    
    func cancelSpinning() {
        animationTask?.cancel()
        animationTask = nil
    }
}

//
//  BetButton.swift
//  SlotMachine
//
//  Created by Alfredo Alba on 11/1/26.
//

import SwiftUI

struct BetButton: View {
    let bet: Int
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("CHANGE BET")
                .font(.headline)
                .foregroundStyle(.yellow)
        }
        .buttonStyle(.glassProminent)
    }
}

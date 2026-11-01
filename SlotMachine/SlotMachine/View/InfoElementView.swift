//
//  InfoElementView.swift
//  SlotMachine
//
//  Created by Alfredo Alba on 11/1/26.
//

import SwiftUI

struct InfoElementView: View {
    let title: String
    let value: Int
    
    var body: some View {
        VStack() {
            Text(title)
                .font(.headline)
                .foregroundStyle(.yellow)
            Text("\(value)")
                .font(.title2.bold())
                .foregroundStyle(.yellow)
                .contentTransition(.numericText())
        }
    }
}

#Preview {
    InfoElementView(title: "BET", value: 0)
}

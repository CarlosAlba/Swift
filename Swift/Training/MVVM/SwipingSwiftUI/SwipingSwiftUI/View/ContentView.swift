//
//  ContentView.swift
//  SwipingSwiftUI
//
//  Created by Alfredo Alba on 5/12/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = SwipeViewModel()
    
    var body: some View {
        ZStack {
            viewModel.backgroundColor
                .ignoresSafeArea()
            
            Text(viewModel.currentDirection?.rawValue ?? "Swipe Any Direction")
                .font(.title)
                .bold()
                .foregroundStyle(.black)
        }
        .gesture(
            DragGesture(minimumDistance: 20)
                .onEnded { value in
                    let horizontal = value.translation.width
                    let vertical = value.translation.height
                    
                    if abs(horizontal) > abs(vertical) {
                        if horizontal < 0 {
                            viewModel.handleSwipe(.left)
                        } else {
                            viewModel.handleSwipe(.right)
                        }
                    } else {
                        if vertical < 0 {
                            viewModel.handleSwipe(.up)
                        } else {
                            viewModel.handleSwipe(.down)
                        }
                    }
                }
        )
    }
}

#Preview {
    ContentView()
}

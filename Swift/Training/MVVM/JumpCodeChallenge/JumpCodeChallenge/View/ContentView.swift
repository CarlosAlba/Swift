//
//  ContentView.swift
//  JumpCodeChallenge
//
//  Created by Alfredo Alba on 5/9/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CardListViewModel()
    @State private var scrollToID: UUID?
    @State private var currentlyCenteredID: UUID?

    var body: some View {
        NavigationView {
            ScrollViewReader { proxy in
                ScrollView {
                    LazyVStack(spacing: 16) {
                        ForEach(viewModel.items) { item in
                            GeometryReader { geo in
                                let frame = geo.frame(in: .global)
                                let screenMidY = UIScreen.main.bounds.midY
                                let distance = abs(frame.midY - screenMidY)

                                CardView(
                                    item: item,
                                    isFavorite: item.isFavorite,
                                    isHighlighted: currentlyCenteredID == item.id,
                                    onFavoriteToggle: {
                                        viewModel.toggleFavorite(for: item)
                                    }
                                )
                                .onAppear {
                                    if distance < 100 {
                                        currentlyCenteredID = item.id
                                    }
                                }
                            }
                            .frame(height: 120)
                            .id(item.id) // Needed for scrollTo
                        }
                    }
                    .padding()
                }
                .onChange(of: scrollToID) { id in
                    if let id = id {
                        withAnimation {
                            proxy.scrollTo(id, anchor: .center)
                        }
                        scrollToID = nil
                    }
                }
                .navigationTitle("Cards")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Add Card") {
                            let newItem = viewModel.addNewItem()
                            scrollToID = newItem.id
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

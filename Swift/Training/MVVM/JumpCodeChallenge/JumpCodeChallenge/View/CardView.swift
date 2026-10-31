//
//  View.swift
//  JumpCodeChallenge
//
//  Created by Alfredo Alba on 5/9/25.
//

import SwiftUI

struct CardView: View {
    let item: CardItem
    let isFavorite: Bool
    let isHighlighted: Bool
    let onFavoriteToggle: () -> Void

    var body: some View {
        HStack {
            Circle()
                .fill(Color.blue)
                .frame(width: 10, height: 10)

            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(width: 60, height: 60)
                .cornerRadius(8)

            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.headline)
                Text("Card description")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            Spacer()

            Button(action: onFavoriteToggle) {
                Image(systemName: isFavorite ? "heart.fill" : "heart")
                    .foregroundColor(isFavorite ? .red : .gray)
            }
        }
        .padding()
        .background(isHighlighted ? Color.yellow.opacity(0.3) : Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 2)
        .animation(.easeInOut, value: isHighlighted)
    }
}

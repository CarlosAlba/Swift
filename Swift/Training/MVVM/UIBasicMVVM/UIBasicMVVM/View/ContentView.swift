//
//  ContentView.swift
//  UIBasicMVVM
//
//  Created by Alfredo Alba on 5/7/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = PostViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.posts) { post in
                VStack(alignment: .leading) {
                    Text(post.title)
                        .font(.headline)
                    Text(post.body)
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("Posts")
            .task {
                await viewModel.fetchPosts()
            }
        }
    }
}

#Preview {
    ContentView()
}

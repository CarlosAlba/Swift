//
//  PostViewModel.swift
//  UIBasicMVVM
//
//  Created by Alfredo Alba on 5/7/25.
//
import Foundation

class PostViewModel: ObservableObject {
    @Published var posts: [Post] = []
    @Published var isLoading = false
    @Published var errorMessage: String? = nil
    
    func fetchPosts() async {
        isLoading = true
        errorMessage = nil
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            errorMessage = "Invalid URL"
            isLoading = false
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decodePosts = try JSONDecoder().decode([Post].self, from: data)
            self.posts = decodePosts
            
        } catch {
            print("Error: \(error.localizedDescription)")
        }
        
        isLoading = false
    }
}

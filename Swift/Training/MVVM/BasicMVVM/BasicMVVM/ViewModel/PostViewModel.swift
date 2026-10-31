//
//  PostViewModel.swift
//  BasicMVVM
//
//  Created by Alfredo Alba on 5/7/25.
//

import Foundation

protocol PostViewModelDelegate: AnyObject {
    func didFechtchPost()
    func didFailWithError(_ error: Error)
}

class PostViewModel {
    weak var delegate: PostViewModelDelegate?
    private(set) var posts: [Post] = []
    
    func fetchPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            
            if let error = error {
                self?.delegate?.didFailWithError(error)
                return
            }
            
            guard let data = data else { return }
            
            do {
                let decodedPost = try JSONDecoder().decode([Post].self, from: data)
                self?.posts = decodedPost
                self?.delegate?.didFechtchPost()
            } catch {
                self?.delegate?.didFailWithError(error)
            }
        }
        
        task.resume()
    }
}

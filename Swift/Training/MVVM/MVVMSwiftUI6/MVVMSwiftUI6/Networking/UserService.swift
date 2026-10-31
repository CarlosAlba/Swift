//
//  UserService.swift
//  MVVMSwiftUI6
//
//  Created by Alfredo Alba on 10/18/26.
//

import Foundation

protocol UserServiceProtocol {
    func fetchUsers(completion: @escaping (Result<[User], Error>) -> Void)
}

class UserService: UserServiceProtocol {
    func fetchUsers(completion: @escaping (Result<[User], any Error>) -> Void) {
        guard let url = URL(string: "https://dummyjson.com/users?utm_source=chatgpt.com") else {
            completion(.failure(URLError(.badURL)))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
            }
            
            guard let data = data else {
                completion(.failure(URLError(.badServerResponse)))
                return
            }
            
            // Add response and check for Response codes
            
            do {
                let resposne = try JSONDecoder().decode(UserResponse.self, from: data)
                completion(.success(resposne.users))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}

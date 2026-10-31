//
//  UserViewModel.swift
//  MVVMSwiftUI6
//
//  Created by Alfredo Alba on 10/18/26.
//

import Foundation
import Combine

@MainActor
class UserViewModel: ObservableObject {
    @Published var users: [User] = []
    @Published var errorMessage: String?
    
    private let service: UserServiceProtocol
    
    init(service: UserServiceProtocol? = nil) {
        self.service = service ?? UserService()
    }
    
    func loadUsers() {
        service.fetchUsers { [weak self] response in
            DispatchQueue.main.async {
                switch response {
                case .success(let users):
                    self?.users = users
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                }
            }
        }
    }
}

//
//  UserViewModel.swift
//  UsersMVVMSwift
//
//  Created by Alfredo Alba on 5/16/25.
//

import Foundation

class UserViewModel {
    private let service: ServiceProtocol
    
    var users: [User] = []
    var onUpdate: (() -> Void)?
    var onError: ((String) -> Void)?
    
    init(service: ServiceProtocol = Service()) {
        self.service = service
    }
    
    func loadUsers() {
        service.fetchUsers { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let users):
                    self?.users = users
                    self?.onUpdate?()
                case .failure(let error):
                    self?.onError?(error.localizedDescription)
                }
            }
        }
    }
}

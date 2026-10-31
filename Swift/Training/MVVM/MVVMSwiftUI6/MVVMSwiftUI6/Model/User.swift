//
//  User.swift
//  MVVMSwiftUI6
//
//  Created by Alfredo Alba on 10/18/26.
//

import Foundation

struct User: Codable, Identifiable {
    let id: Int
    let firstName: String
    let email: String
    let image: String
}

nonisolated struct UserResponse: Codable {
    let users: [User]
}

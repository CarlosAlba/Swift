//
//  Post.swift
//  UIBasicMVVM
//
//  Created by Alfredo Alba on 5/7/25.
//
import Foundation

struct Post: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

//
//  City.swift
//  CityWeather
//
//  Created by Alfredo Alba on 5/16/25.
//

struct City: Codable, Identifiable {
    let key: String
    let englishName: String
    // Added id
    var id: String { key }
}

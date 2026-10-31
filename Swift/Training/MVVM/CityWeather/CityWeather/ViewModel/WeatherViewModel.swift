//
//  WeatherViewModel.swift
//  CityWeather
//
//  Created by Alfredo Alba on 5/16/25.
//

import Foundation

@MainActor
class WeatherViewModel: ObservableObject {
    @Published var cities: [City] = []
    @Published var errorMessage: String?
    
    private let services: WeatherServicesProtocol
    
    init(services: WeatherServicesProtocol = WeatherServices()) {
        self.services = services
    }
    
    // MARK: function load cities
    func loadCities() {
        services.getCities { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let cities):
                    self?.cities = cities
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                }
            }
        }
    }
}

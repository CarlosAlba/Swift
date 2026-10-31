//
//  WeatherServices.swift
//  CityWeather
//
//  Created by Alfredo Alba on 5/16/25.
//

import Foundation

protocol WeatherServicesProtocol {
    func getCities(completion: @escaping (Result<[City], Error>) -> Void)
    func getTemperature(_ city: City, completion: @escaping (Result<[City], Error>) -> Void)
}

class WeatherServices: WeatherServicesProtocol {
    func getCities(completion: @escaping (Result<[City], Error>) -> Void) {
        // Check URL
        // TODO: check the pass parameter in the URL
        //URLQueryItem.init(name: "apikey", value: "kAP3jGb5EV3XvxVxV6xfmXoNSjGovsvD")
        // Added URLComponents
        var components = URLComponents(
            string: "https://dataservice.accuweather.com/currentconditions/v1/"
        )
        // Added queryItems
        components?.queryItems = [
            URLQueryItem(name: "apikey", value: "YOUR_API_KEY")
        ]
        // Added componets to the url
        guard let url = components?.url else {
            completion(.failure(URLError(.badURL)))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            // Error handling
            if let error = error {
                completion(.failure(error))
                return
            }
            // Added
            guard let response = response as? HTTPURLResponse,
                  (200...299).contains(response.statusCode) else {
                completion(.failure(URLError(.badServerResponse)))
                return
            }
            
            // Chek the data is valid before we use it
            guard let data = data else {
                completion(.failure((URLError(.badServerResponse))))
                return
            }
            
            // Get Cities
            do {
                let cities = try JSONDecoder().decode([City].self, from: data)
                completion(.success(cities))
            } catch {
                completion(.failure(error))
            }
            
        }.resume()
    }
    
    func getTemperature(_ city: City, completion: @escaping (Result<[City], any Error>) -> Void) {
        // Added URLComponents
        var components = URLComponents(
            string: "https://dataservice.accuweather.com/currentconditions/v1/\(city.key)"
        )
        // Added queryItems
        components?.queryItems = [
            URLQueryItem(name: "apikey", value: "YOUR_API_KEY")
        ]
        // Added components?.url
        guard let url = components?.url else {
            completion(.failure(URLError(.badURL)))
            return
        }
        // Added Response
        URLSession.shared.dataTask(with: url) { data, response, error in
            // Error handling
            if let error = error {
                completion(.failure(error))
                return
            }
            // Added response
            guard let response = response as? HTTPURLResponse,
                  (200...299).contains(response.statusCode) else {
                completion(.failure(URLError(.badServerResponse)))
                return
            }
            
            // Chek the data is valid before we use it
            guard let data = data else {
                completion(.failure((URLError(.badServerResponse))))
                return
            }
            
            // Get Cities
            do {
                let cities = try JSONDecoder().decode([City].self, from: data)
                completion(.success(cities))
            } catch {
                completion(.failure(error))
            }
            
        }.resume()
    }
}

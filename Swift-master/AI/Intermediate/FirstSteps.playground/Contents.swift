import WebKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

// 1. Make a GET request to https://jsonplaceholder.typicode.com/todos/1 and parse the JSON.

// JSON = {
//  "userId": 1,
//  "id": 1,
//  "title": "delectus aut autem",
//  "completed": false
// }

struct ExampleJSON: Codable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}

func fetchData() async {
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1") else {
        print("Invalid URL")
        return
    }
    
    let task = URLSession.shared.dataTask(with: url) {
        data, response, error in
        
        // 1. Handle Error
        if let error = error {
            print("Request Error: ", error)
            return
        }
        
        // 2. Check response and data
        guard let data = data else {
            print("No data returned")
            return
        }
        
        // 3. Decode JSON to swift model
        do {
            let example = try JSONDecoder().decode(ExampleJSON.self, from: data)
            
            print("Example JSON: ", example.userId)
        } catch {
            print("Decoding error: ", error)
        }
    }
    
    task.resume()
}

Task {
    await fetchData()
}

// Model: Todo. ViewModel: manages a list of cars. Use protocols for delegation.

// 1. Creation of struct
struct Car: Identifiable, Codable {
    let id: Int
    let make: String
    let model: String
    let year: Int
}

// 2. Protocol

protocol CarViewModelDelegate: AnyObject {
    func didUpdateCars(_ cars: [Car])
    func didFailWithError(_ error: Error)
}

import Foundation

class CarViewModel {
    weak var delegate: CarViewModelDelegate?
    
    private(set) var cars: [Car] = []
    
    func fetchCars() {
        // URL Validation
        guard let url = URL(string: "https://example.com/api/cars") else {
            print("Invalid URL")
            return
        }
        
        // URL request
        let task = URLSession.shared.dataTask(with: url) {
            [weak self] data, response, error in
            
            // Error
            if let error = error {
                print(error)
                self?.delegate?.didFailWithError(error)
                return
            }
            
            // Data
            guard let data = data else {
                print("No data returned")
                return
            }
            
            // Fetch Data
            do {
                let fetchCars = try JSONDecoder().decode([Car].self, from: data)
                self?.cars = fetchCars
                self?.delegate?.didUpdateCars(fetchCars)
                
            } catch { // Error Catching while fetching
                self?.delegate?.didFailWithError(error)
            }
        }
        
        task.resume()
    }
}

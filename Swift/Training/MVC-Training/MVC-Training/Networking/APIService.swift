//
//  APIService.swift
//  MVC-Training
//
//  Created by Alfredo Alba on 12/3/21.
//

import Foundation

class APIService {
    let source_URL = URL(string: "https://dummy.restapiexample.com/api/v1/employees")!
    
    class func getEmployees(completion: @escaping (Emplyees) -> ()) {
        URLSession.shared.dataTask(with: URL(string: "https://dummy.restapiexample.com/api/v1/employees")!) { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            
            if let data = data {
                completion(try! jsonDecoder.decode(Emplyees.self, from: data))
            }
                            
            // TODO: Error handling
            
        }.resume()
    }
}

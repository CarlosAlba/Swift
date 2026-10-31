//
//  Employees.swift
//  MVC-Training
//
//  Created by Alfredo Alba on 12/3/21.
//

import Foundation

struct Emplyees: Codable {
    let status: String
    let data: [EmployeeData]
}

struct EmployeeData: Codable {
    let id: Int
    let employee_name: String
    let employee_salary: Int
    let employee_age: Int
    let profile_image: String
    
    init(id: Int, employee_name: String, employee_salary: Int, employee_age: Int, profile_image: String) {
        self.id = id
        self.employee_age = employee_age
        self.employee_name = employee_name
        self.employee_salary = employee_salary
        self.profile_image = profile_image
    }
}

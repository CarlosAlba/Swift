//
//  ViewController.swift
//  MVC-Training
//
//  Created by Alfredo Alba on 12/3/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var employeeTable: UITableView!
    
    var employees: [EmployeeData] = [EmployeeData]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        employeeTable.delegate = self
        employeeTable.dataSource = self
        
        APIService.getEmployees(completion: { response in
            self.employees = response.data
            
            DispatchQueue.main.async {
                self.employeeTable.reloadData()
            }
        })
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "employeesIdentifier", for: indexPath) as! EmployeeCell
        
        cell.employeeID.text = String(employees[indexPath.row].id)
        cell.employeeName.text = employees[indexPath.row].employee_name
        
        return cell
    }
}


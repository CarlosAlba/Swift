//
//  EmployeeCell.swift
//  MVC-Training
//
//  Created by Alfredo Alba on 12/3/21.
//

import UIKit

class EmployeeCell: UITableViewCell {
    @IBOutlet weak var employeeID: UILabel!
    @IBOutlet weak var employeeName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

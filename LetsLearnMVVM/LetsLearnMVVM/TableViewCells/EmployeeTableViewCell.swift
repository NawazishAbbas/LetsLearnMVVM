//
//  EmployeeTableViewCell.swift
//  LetsLearnMVVM
//
//  Created by Nawazish Abbas on 6/07/24.
//  Copyright © 2024 Nawazish Abbas. All rights reserved.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell 
{
    @IBOutlet weak var employeeIdLabel: UILabel!
    @IBOutlet weak var employeeNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  ViewController.swift
//  LetsLearnMVVM
//
//  Created by Nawazish Abbas on 6/07/24.
//  Copyright © 2024 Nawazish Abbas. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var employeeTableView: UITableView!
    private var employeeViewModel : EmployeesViewModel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        callToViewModelForUIUpdate()
    }
    
    func callToViewModelForUIUpdate()
    {
        self.employeeViewModel =  EmployeesViewModel()
        self.employeeViewModel.bindEmployeeViewModelToController = {
            DispatchQueue.main.async {
                self.employeeTableView.reloadData()
            }
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.employeeViewModel.empData?.data?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeeTableViewCell", for: indexPath) as! EmployeeTableViewCell
        
        if let item = self.employeeViewModel.empData?.data?[indexPath.row] {
            cell.employeeIdLabel.text = "Employee ID: \(item.id ?? 0)"
            cell.employeeNameLabel.text = "Name: " + (item.employeeName ?? "")
        }
        
        return cell
    }
}

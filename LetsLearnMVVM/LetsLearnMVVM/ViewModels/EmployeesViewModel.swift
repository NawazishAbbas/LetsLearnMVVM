//
//  EmployeesViewModel.swift
//  LetsLearnMVVM
//
//  Created by Nawazish Abbas on 6/07/24.
//  Copyright © 2024 Nawazish Abbas. All rights reserved.
//

import Foundation

class EmployeesViewModel : NSObject {
    
    private var apiService : APIService!
    private(set) var empData : Employees? {
        didSet {
            self.bindEmployeeViewModelToController()
        }
    }
    
    var bindEmployeeViewModelToController : (() -> ()) = {}
    
    override init() {
        super.init()
        self.apiService =  APIService()
        callFuncToGetEmpData()
    }
    
    func callFuncToGetEmpData() {
        self.apiService.apiToGetEmployeeData { (empData) in
            self.empData = empData
        }
    }
}

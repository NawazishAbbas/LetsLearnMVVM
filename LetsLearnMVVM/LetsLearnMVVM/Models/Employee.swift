import Foundation

// MARK: - Employees
struct Employees: Codable {
    var status: String?
    var data: [Datum]?
    var message: String?
}

// MARK: - Datum
struct Datum: Codable {
    var id: Int?
    var employeeName: String?
    var employeeSalary, employeeAge: Int?
    var profileImage: String?

    enum CodingKeys: String, CodingKey {
        case id
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
    }
}

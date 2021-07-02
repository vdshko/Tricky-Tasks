class Employee {
    
    var bank: Bank?
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("Employee \(name) is deinitialized.")
    }
}

class Bank {
    
    let name: String
    unowned let employee: Employee
    
    init(name: String, with employee: Employee) {
        self.name = name
        self.employee = employee
    }
    
    deinit {
        print("Bank \(name) is deinitialized.")
    }
}

var employee: Employee? = Employee(name: "Anna")
employee?.bank = Bank(name: "Mono", with: employee!)
employee = nil

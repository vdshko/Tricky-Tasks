class Animal {
    
    var zoo: Zoo?
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("Animal \(name) is deinitialized.")
    }
}

class Zoo {
    
    weak var animal: Animal?
    
    let location: String
    
    init(location: String, with animal: Animal?) {
        self.location = location
        self.animal = animal
    }
    
    deinit {
        print("Zoo at \(location) is deinitialized.")
    }
}

var animal: Animal? = Animal(name: "Tiger")
animal?.zoo = Zoo(location: "Somewhere", with: animal)
animal = nil

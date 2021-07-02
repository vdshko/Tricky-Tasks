protocol Movable {
    
    func walk()
}

extension Movable {

    func crawl() {
        print("Default " + #function)
    }
}

class Animal: Movable {
    
    func walk() {
        print("Animal " + #function)
    }
    
    func crawl() {
        print("Animal " + #function)
    }
}

class BadAnimal: Animal {
    
    override func walk() {
        print("BadAnimal " + #function)
    }
    
    override func crawl() {
        print("BadAnimal " + #function)
    }
}

let panda: Movable = Animal()
panda.walk()
panda.crawl()

print("___________________\n")

let wolf: Animal = BadAnimal()
wolf.walk()
wolf.crawl()

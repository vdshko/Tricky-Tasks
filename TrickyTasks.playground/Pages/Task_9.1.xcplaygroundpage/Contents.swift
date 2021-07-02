protocol Movable {
    
    func walk()
}

extension Movable {

    func crawl() {
        print("Default " + #function)
    }
}

struct Animal: Movable {
    
    func walk() {
        print("Animal " + #function)
    }
    
    func crawl() {
        print("Animal " + #function)
    }
}

let panda = Animal()
panda.walk()
panda.crawl()

print("___________________\n")

let wolf: Movable = Animal()
wolf.walk()
wolf.crawl()

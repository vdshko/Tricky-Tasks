func test() -> String {
    
    var currentString = ""
    
    func insideTest() -> String {
        var insideString = "M"
        
        defer {
            insideString += "N"
            currentString += "Q"
        }
        
        return currentString + insideString
    }
    
    currentString += "A"
    
    defer {
        currentString += "B"
    }
    
    currentString += insideTest()
    
    do {
        defer {
            currentString += "C"
        }
        
        currentString += "E"
        
        defer {
            currentString += "D"
        }
        
        insideTest()
    }
    
    currentString += "F"
    
    defer {
        currentString += "G"
    }
    
    return currentString
}

print(test())

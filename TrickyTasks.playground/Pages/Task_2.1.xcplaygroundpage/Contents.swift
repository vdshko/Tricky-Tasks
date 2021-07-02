func test() -> String {
    var currentString = "A"
    
    defer {
        currentString += "B"
    }
    
    return currentString
}

print(test())
